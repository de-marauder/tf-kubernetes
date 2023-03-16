terraform {

  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }

    # kubernetes = {
    #   source  = "hashicorp/kubernetes"
    #   version = "2.18.1"
    # }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }

  # Comment in to use a remote backend
  # Make sure to put in the approriate parameters
  # backend "s3" {
  #   bucket         = ""
  #   key            = "terraform.tfstate"
  #   dynamodb_table = ""

  #   region = ""
  # }
}


provider "aws" {
  region  = var.region
  profile = var.aws_profile
}

# provider "kubernetes" {
#   host                   = module.kube_cluster.cluster_endpoint
#   cluster_ca_certificate = module.kube_cluster.cluster_ca_certificate
#   # token                  = module.kube_cluster.module.eks.token
#   # load_config_file       = false

#   exec {
#     api_version = "client.authentication.k8s.io/v1beta1"
#     args        = ["eks", "get-token", "--cluster-name", module.kube_cluster.cluster_name]
#     command     = "aws"
#   }
# }

# provider "helm" {
#   kubernetes {
#     host                   = module.kube_cluster.cluster_endpoint
#     cluster_ca_certificate = module.kube_cluster.cluster_ca_certificate
#     exec {
#       api_version = "client.authentication.k8s.io/v1beta1"
#       args        = ["eks", "get-token", "--cluster-name", module.kube_cluster.cluster_name]
#       command     = "aws"
#     }
#   }
# }
