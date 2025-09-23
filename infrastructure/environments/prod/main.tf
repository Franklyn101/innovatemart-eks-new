 
provider "aws" {
  region = var.region
}

module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr = var.vpc_cidr
  region   = var.region
}

module "iam" {
  source = "../../modules/iam"
}

module "eks" {
  source = "../../modules/eks"

  cluster_name            = var.cluster_name
  cluster_iam_role_arn    = module.iam.eks_cluster_role_arn
  node_group_iam_role_arn = module.iam.eks_node_group_role_arn
  private_subnet_ids      = module.vpc.private_subnet_ids
}