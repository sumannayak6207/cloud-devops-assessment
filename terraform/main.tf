provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"
  region = var.region
}

module "eks" {
  source = "./modules/eks"
  cluster_name = var.cluster_name
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.subnet_ids
  ssh_key_name = var.ssh_key_name
}
