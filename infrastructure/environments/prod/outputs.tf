 
output "cluster_endpoint" {
  description = "Endpoint for EKS cluster"
  value       = module.eks.cluster_endpoint
}

output "cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.cluster_id
}

output "developer_access_key_id" {
  description = "Developer IAM user access key ID"
  value       = module.iam.developer_access_key_id
}

output "developer_secret_access_key" {
  description = "Developer IAM user secret access key"
  value       = module.iam.developer_secret_access_key
  sensitive   = true
}