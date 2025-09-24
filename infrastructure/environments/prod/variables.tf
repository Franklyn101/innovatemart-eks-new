variable "region" {
  type    = string
  default = "eu-north-1"
}

variable "cluster_name" {
  type    = string
  default = "innovatemart-eks-new"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
