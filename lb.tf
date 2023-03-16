module "lb_role" {
  source = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks"

  role_name                              = "${module.kube_cluster.cluster_name}_eks_lb"
  attach_load_balancer_controller_policy = true

  oidc_providers = {
    main = {
      provider_arn               = module.kube_cluster.oidc_provider_arn
      namespace_service_accounts = ["kube-system:aws-load-balancer-controller"]
    }
  }
}

# provider "kubernetes" {
#   host                   = data.aws_eks_cluster.cluster_endpoint
#   cluster_ca_certificate = data.aws_eks_cluster.cluster.cluster_ca_certificate
#   exec {
#     api_version = "client.authentication.k8s.io/v1alpha1"
#     args        = ["eks", "get-token", "--cluster-name", data.aws_eks_cluster.cluster.cluster_name]
#     command     = "aws"
#   }
# }

# # provider "helm" {
# #   kubernetes {
# #     host                   = data.aws_eks_cluster.cluster.cluster_endpoint
# #     cluster_ca_certificate = data.aws_eks_cluster.cluster.cluster_ca_certificate
# #     exec {
# #       api_version = "client.authentication.k8s.io/v1alpha1"
# #       args        = ["eks", "get-token", "--cluster-name", data.aws_eks_cluster.cluster.cluster_name]
# #       command     = "aws"
# #     }
# #   }

# # }

resource "kubernetes_service_account" "service-account" {
  metadata {
    name      = "aws-load-balancer-controller"
    namespace = "kube-system"
    labels = {
      "app.kubernetes.io/name"      = "aws-load-balancer-controller"
      "app.kubernetes.io/component" = "controller"
    }
    annotations = {
      "eks.amazonaws.com/role-arn"               = module.lb_role.iam_role_arn
      "eks.amazonaws.com/sts-regional-endpoints" = "true"
    }
  }

  depends_on = [
    data.aws_eks_cluster.cluster,
  ]
}

resource "helm_release" "lb" {
  name       = "aws-load-balancer-controller"
  repository = "https://aws.github.io/eks-charts"
  chart      = "aws-load-balancer-controller"
  namespace  = "kube-system"
  depends_on = [
    kubernetes_service_account.service-account
  ]

  set {
    name  = "region"
    value = var.region
  }

  set {
    name  = "vpcId"
    value = module.kube_cluster.vpc_id
  }

  # set {
  #   name  = "image.repository"
  #   value = "602401143452.dkr.ecr.eu-west-2.amazonaws.com/amazon/aws-load-balancer-controller"
  # }

  set {
    name  = "serviceAccount.create"
    value = "false"
  }

  set {
    name  = "serviceAccount.name"
    value = "aws-load-balancer-controller"
  }

  set {
    name  = "clusterName"
    value = module.kube_cluster.cluster_name
  }
}
