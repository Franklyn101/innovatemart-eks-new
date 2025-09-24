 
variable "region" {
  description = "AWS region"
  type        = string
    default     = "us-north-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
   default     = "innovatemart-eks-cluster"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}