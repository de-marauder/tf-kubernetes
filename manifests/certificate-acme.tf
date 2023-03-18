resource "kubectl_manifest" "certificate_vote_app_vote_app_cert" {
  yaml_body = file("${path.module}/certificates/vote-app.yaml")

  depends_on = [
    helm_release.cert-manager,
    helm_release.loki-stack,
    kubectl_manifest.ingress_vote_app_voting_app_ingress
  ]
}
resource "kubectl_manifest" "certificate_sock_app_sock_app_cert" {
  yaml_body = file("${path.module}/certificates/sock-app.yaml")

  depends_on = [
    helm_release.cert-manager,
    helm_release.loki-stack,
    kubectl_manifest.ingress_sock_app_sock_app_ingress
  ]
}
resource "kubectl_manifest" "certificate_prom_app_prom_app_cert" {
  yaml_body = file("${path.module}/certificates/prom-app.yaml")

  depends_on = [
    helm_release.cert-manager,
    helm_release.loki-stack,
    kubectl_manifest.ingress_prom_app_monitoring_app_ingress
  ]
}
resource "kubectl_manifest" "certificate_graf_app_graf_app_cert" {
  yaml_body = file("${path.module}/certificates/graf-app.yaml")

  depends_on = [
    helm_release.cert-manager,
    helm_release.loki-stack,
    kubectl_manifest.ingress_graf_app_monitoring_app_ingress
  ]
}
resource "kubectl_manifest" "certificate_portfolio_cert" {
  yaml_body = file("${path.module}/certificates/portfolio.yaml")

  depends_on = [
    helm_release.cert-manager,
    helm_release.loki-stack,
    kubectl_manifest.portfolio-ingress
  ]
}

