output "wordpress_ip" {
  value = google_compute_global_forwarding_rule.wordpress.ip_address
}