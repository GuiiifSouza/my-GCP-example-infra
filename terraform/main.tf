provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source                    = "./modules/vpc"
  vpc_name                  = var.vpc_name
  region                    = var.region
  public_subnet_cidr_block  = var.public_subnet_cidr_block
  private_subnet_cidr_block = var.private_subnet_cidr_block
  availability_zones        = var.availability_zones
}

module "gke" {
  source             = "./modules/gke"
  k8s_cluster_name   = var.k8s_cluster_name
  region             = var.region
  instance_type      = var.instance_type
  node_count         = var.node_count
  node_ssd_size_gb   = var.node_ssd_size_gb
  vpc_network        = module.vpc.vpc_id
  public_subnet_id   = module.vpc.public_subnet_ids[0]
  availability_zones = var.availability_zones
}
