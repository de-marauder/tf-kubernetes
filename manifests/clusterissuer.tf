resource "kubectl_manifest" "clusterissuer_letsencrypt_cluster_issuer" {
  yaml_body = file("${path.module}/clusterissuer.yaml")

  depends_on = [
    helm_release.cert-manager,
  ]
}

