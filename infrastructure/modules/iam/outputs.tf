 
output "eks_cluster_role_arn" {
  value = aws_iam_role.eks_cluster_role.arn
}

output "eks_node_group_role_arn" {
  value = aws_iam_role.eks_node_group_role.arn
}

output "developer_access_key_id" {
  value = aws_iam_access_key.developer.id
}

output "developer_secret_access_key" {
  value = aws_iam_access_key.developer.secret
  sensitive = true
}