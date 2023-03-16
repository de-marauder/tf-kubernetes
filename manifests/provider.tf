terraform {

  required_providers {

    # kubernetes = {
    #   source  = "hashicorp/kubernetes"
    #   version = "2.18.1"
    # }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }
}
# provider "kubernetes" {
#   host                   = var.host
#   cluster_ca_certificate = var.cluster_ca_certificate
#   token                  = var.token
#   # load_config_file       = false
#   exec {  
#       api_version = "client.authentication.k8s.io/v1beta1"
#       args        = ["eks", "get-token", "--cluster-name", var.cluster_name]
#       command     = "aws"
#     }
# }

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
    host                   = var.host
    # cluster_ca_certificate = var.cluster_ca_certificate
    # token                  = var.token
    # exec {  
    #   api_version = "client.authentication.k8s.io/v1beta1"
    #   args        = ["eks", "get-token", "--cluster-name", var.cluster_name]
    #   command     = "aws"
    # }
  }
}

provider "kubectl" {
  apply_retry_count      = 15
  host                   = var.host
  cluster_ca_certificate = var.cluster_ca_certificate

  token            = var.token
  load_config_file = false
}
