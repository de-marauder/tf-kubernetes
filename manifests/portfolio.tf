resource "kubectl_manifest" "portfolio_ns" {
  yaml_body = file("${path.module}/portfolio/ns.yaml")
}
resource "kubectl_manifest" "portfolio_dep" {
  yaml_body = file("${path.module}/portfolio/deployment.yaml")
  depends_on = [
    kubectl_manifest.portfolio_ns
  ]
}
resource "kubectl_manifest" "portfolio_svc" {
  yaml_body = file("${path.module}/portfolio/service.yaml")
  depends_on = [
    kubectl_manifest.portfolio_ns
  ]
}