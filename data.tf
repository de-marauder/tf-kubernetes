data "aws_eks_cluster" "cluster" {
  name = module.kube_cluster.cluster_name
  # name = module.kube_cluster.cluster_id
  depends_on = [
    module.kube_cluster
  ]
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.kube_cluster.cluster_name
  # name = module.kube_cluster.cluster_id
  depends_on = [
    module.kube_cluster
  ]
}
data "kubernetes_service" "ingress_nginx" {

  metadata {
    name      = "ingress-nginx"
    namespace = "ingress-nginx"
  }
  depends_on = [
    data.aws_eks_cluster.cluster,
    module.kube-manifests
  ]
}
