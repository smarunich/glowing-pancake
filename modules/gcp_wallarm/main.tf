data "google_compute_image" "wallarm_image" {
  project = "wallarm-node-195710"
  name    = var.wallarm_image
}

data "google_compute_zones" "available" {
}

data "template_file" "wallarm_userdata" {
  template = file("${path.module}/wallarm.userdata")
  vars = {
    wallarm_api_domain      = "${var.wallarm_api_domain}"
    wallarm_deploy_username = "${var.wallarm_deploy_username}"
    wallarm_deploy_password = "${var.wallarm_deploy_password}"
    wallarm_user_domain     = "${var.wallarm_user_domain}"
  }
}


resource "google_compute_instance_template" "wallarm" {
  name_prefix  = var.name_prefix
  machine_type = "f1-micro"
  region       = var.region

  disk {
    source_image = data.google_compute_image.wallarm_image.self_link
  }

  network_interface {
    network    = var.vpc_self_link
    subnetwork = "${var.name_prefix}-subnet-${data.google_compute_zones.available.names[0]}"
  }

  metadata = {
    # image support required https://cloud.google.com/container-optimized-os/docs/how-to/create-configure-instance
    user-data = data.template_file.wallarm_userdata.rendered
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "google_compute_health_check" "wallarm" {
  name                = "${var.name_prefix}-wallarm-compute-health-check"
  check_interval_sec  = 5
  timeout_sec         = 5
  healthy_threshold   = 2
  unhealthy_threshold = 10

  tcp_health_check {
    port = "80"
  }
}

locals {
  distribution_policy_zones = [
    for i in range(var.az_count) : data.google_compute_zones.available.names[i]
  ]
}

resource "google_compute_region_instance_group_manager" "wallarm" {
  name = "${var.name_prefix}-wallarm"

  base_instance_name        = "wallarm"
  region                    = var.region
  distribution_policy_zones = local.distribution_policy_zones
  target_size               = var.az_count

  version {
    instance_template = google_compute_instance_template.wallarm.id
  }

  named_port {
    name = "http"
    port = "80"
  }

  named_port {
    name = "https"
    port = "443"
  }

  auto_healing_policies {
    health_check      = google_compute_health_check.wallarm.id
    initial_delay_sec = 300
  }
}


resource "google_compute_region_health_check" "wallarm_http" {
  name = "${var.name_prefix}-wallarm-http-region-health-check"

  timeout_sec        = 1
  check_interval_sec = 1

  http_health_check {
    port = "80"
  }
}


resource "google_compute_region_health_check" "wallarm_https" {
  name = "${var.name_prefix}-wallarm-https-region-health-check"

  timeout_sec        = 1
  check_interval_sec = 1

  https_health_check {
    port = "443"
  }
}

resource "google_compute_autoscaler" "wallarm" {
  count  = var.az_count
  name   = "${var.name_prefix}-wallarm-autoscaler-${data.google_compute_zones.available.names[count.index]}"
  zone   = data.google_compute_zones.available.names[count.index]
  target = google_compute_region_instance_group_manager.wallarm.id

  autoscaling_policy {
    max_replicas    = 5
    min_replicas    = var.az_count
    cooldown_period = 120
    cpu_utilization {
      target = 0.2
    }
  }
}

resource "google_compute_region_backend_service" "wallarm_http" {
  name                  = "${var.name_prefix}-wallarm-backend-service"
  region                = var.region
  port_name             = "http"
  protocol              = "TCP"
  load_balancing_scheme = "EXTERNAL"
  #session_affinity      = "HTTP_COOKIE"

  backend {
    group = google_compute_region_instance_group_manager.wallarm.instance_group
  }

  health_checks = [
    google_compute_region_health_check.wallarm_http.id
  ]
}

resource "google_compute_region_backend_service" "wallarm_https" {
  name                  = "${var.name_prefix}-wallarm-backend-service"
  region                = var.region
  port_name             = "https"
  protocol              = "TCP"
  load_balancing_scheme = "EXTERNAL"
  #session_affinity      = "HTTP_COOKIE"

  backend {
    group = google_compute_region_instance_group_manager.wallarm.instance_group
  }

  health_checks = [
    google_compute_region_health_check.wallarm_https.id
  ]
}

resource "google_compute_address" "wallarm_nlb" {
  name         = "${var.name_prefix}-wallarm-nlb-ip"
  region       = var.region
  address_type = "EXTERNAL"
}

resource "google_compute_forwarding_rule" "wallarm_http" {
  name            = "${var.name_prefix}-wallarm-http-forwarding-rule"
  region          = var.region
  ip_address      = google_compute_address.wallarm_nlb.self_link
  ip_protocol     = "TCP"
  port_range      = "80"
  backend_service = google_compute_region_backend_service.wallarm_http.self_link
}


resource "google_compute_forwarding_rule" "wallarm_https" {
  name            = "${var.name_prefix}-wallarm-https-forwarding-rule"
  region          = var.region
  ip_address      = google_compute_address.wallarm_nlb.self_link
  ip_protocol     = "TCP"
  port_range      = "443"
  backend_service = google_compute_region_backend_service.wallarm_https.self_link
}
