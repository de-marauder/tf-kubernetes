terraform {

  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
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
    # config_path = "~/.kube/config"
    host                   = data.aws_eks_cluster.cluster.endpoint                                   # var.host
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data) # var.cluster_ca_certificate
    token                  = data.aws_eks_cluster_auth.cluster.token                                 # var.token
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      args        = ["eks", "get-token", "--cluster-name", data.aws_eks_cluster.cluster.name]
      command     = "aws"
    }
  }
}

provider "kubectl" {
  apply_retry_count      = 15
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data) # var.cluster_ca_certificate

  token = data.aws_eks_cluster_auth.cluster.token # var.token

  load_config_file = false
}

provider "aws" {
  region  = var.region
  profile = var.aws_profile
}

