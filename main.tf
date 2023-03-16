# Define kubernetes cluster using kube module
module "kube_cluster" {
  source = "./kube-cluster"

  cluster_name = "kube-marauder"
  region       = "us-east-1"
  # cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
}

module "kube-manifests" {
  source = "./manifests"

  host                   = data.aws_eks_cluster.cluster.endpoint
  # cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token
  email                  = "chiezike16@gmail.com"

  cluster_name = data.aws_eks_cluster.cluster.name

  # depends_on = [
  #   module.kube_cluster
  # ]
}

output "kube_outputs" {
  value = module.kube_cluster
}
output "ci_bastion_public_ip" {
  value = module.kube_cluster.ci_bastion_public_ip
}
# output "manifest_outputs" {
#   sensitive = true
#   value = module.kube-manifests
# }
output "data-eks" {
  value=data.aws_eks_cluster.cluster
}
# output "data-eks-auth" {
#   sensitive = true
#   value=data.aws_eks_cluster_auth.cluster
# }
output "k8s_service_ingress_elb" {
  description = "External DN name of elastic load balancer"
  value       = data.kubernetes_service.ingress_nginx.status.0.load_balancer.0.ingress.0.hostname

}