provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
}

module "gcp_vpc" {   
  source = "./modules/gcp_vpc"
  project = var.gcp_project
  region  = var.gcp_region
  vpc_cidr_block = var.vpc_cidr_block
  az_count = var.az_count
  name_prefix = var.name_prefix
}

module "gcp_wordpress" {
  source = "./modules/gcp_wordpress"
  region  = var.gcp_region
  vpc_self_link = module.gcp_vpc.self_link
  az_count = var.az_count
  name_prefix = var.name_prefix
}