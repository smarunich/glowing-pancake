output "wordpress_lb_ip" {
  value = module.gcp_wordpress.wordpress_lb_ip
}
output "wallarm_lb_ip" {
  value = module.gcp_wallarm.wallarm_lb_ip
}
