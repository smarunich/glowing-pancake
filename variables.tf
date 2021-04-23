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
