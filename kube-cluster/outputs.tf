output "cluster_data" {
  description = "ID for EKS control plane."
  value       = module.eks
}
output "vpc_id" {
  description = "ID for EKS control plane."
  value       = module.vpc.vpc_id
}
output "cluster_id" {
  description = "ID for EKS control plane."
  value       = module.eks.cluster_id
}
output "cluster_arn" {
  description = "ARN for EKS control plane."
  value       = module.eks.cluster_arn
}
output "oidc_provider_arn" {
  description = "ARN for EKS control plane."
  value       = module.eks.oidc_provider_arn
}

output "cluster_name" {
  description = "Name for EKS control plane."
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.eks.cluster_endpoint
}

output "cluster_ca_certificate" {
  description = "cluster_ca_certificate for EKS control plane."
  value       = module.eks.cluster_certificate_authority_data
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane."
  value       = module.eks.cluster_security_group_id
}

output "ci_bastion_public_ip" {
  value = aws_instance.ci_bastion.public_ip
}

output "region" {
  description = "AWS region"
  value       = var.region
}