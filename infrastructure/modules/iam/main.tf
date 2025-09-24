# EKS Cluster Role
resource "aws_iam_role" "eks_cluster_role" {
  name = "innovatemart-eks-new-cluster-role"  # UPDATED

  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "eks.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
}

# EKS Node Group Role
resource "aws_iam_role" "eks_node_group_role" {
  name = "innovatemart-eks-new-node-group-role"  # UPDATED

  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
}

# Developer IAM User
resource "aws_iam_user" "developer" {
  name = "innovatemart-eks-new-developer"  # UPDATED
}