resource "kubectl_manifest" "ingress_vote_app_voting_app_ingress" {
  yaml_body = file("${path.module}/ingress/vote-ingress.yaml")
  depends_on = [
    helm_release.ingress-nginx,
    helm_release.cert-manager,
    helm_release.loki-stack,
    kubectl_manifest.vote_app_result-service,
    kubectl_manifest.vote_app_vote-service
  ]
}
resource "kubectl_manifest" "ingress_sock_app_sock_app_ingress" {
  yaml_body = file("${path.module}/ingress/sock-shop-ingress.yaml")
  depends_on = [
    helm_release.ingress-nginx,
    helm_release.cert-manager,
    helm_release.loki-stack,
    kubectl_manifest.sock_shop_10-front-end-svc
  ]
}
resource "kubectl_manifest" "ingress_prom_app_monitoring_app_ingress" {
  yaml_body = file("${path.module}/ingress/prom-ingress.yaml")
  depends_on = [
    # helm_release.kube-prometheus-stack,
    helm_release.ingress-nginx,
    helm_release.cert-manager,
    helm_release.loki-stack,
  ]
}
resource "kubectl_manifest" "ingress_graf_app_monitoring_app_ingress" {
  yaml_body = file("${path.module}/ingress/graf-ingress.yaml")
  depends_on = [
    # helm_release.kube-prometheus-stack,
    helm_release.ingress-nginx,
    helm_release.cert-manager,
    helm_release.loki-stack
  ]
}
resource "kubectl_manifest" "portfolio-ingress" {
  yaml_body = file("${path.module}/ingress/portfolio-ingress.yaml")
  depends_on = [
    # helm_release.kube-prometheus-stack,
    helm_release.ingress-nginx,
    helm_release.cert-manager,
    helm_release.loki-stack,
    kubectl_manifest.portfolio_svc
  ]
}
