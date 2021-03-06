variable "gcp_project" {
  type    = string
  default = "smarunic"
}

variable "gcp_region" {
  type    = string
  default = "us-west1"
}

variable "name_prefix" {
    type = string
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "az_count" {
    type = number
}

variable "wallarm_image" {
    type = string
    default = "wallarm-node-2-18-0-3-19887-build"
}

variable "wallarm_deploy_username" {
  type = string
}

variable "wallarm_deploy_password" {
  type = string
}

variable "wallarm_api_domain" {
  type    = string
  default = "us1.api.wallarm.com"
}
variable "wallarm_user_domain" {
  type    = string
  default = ""
}