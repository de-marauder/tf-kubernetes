resource "kubectl_manifest" "clusterissuer_letsencrypt_cluster_issuer" {
  # yaml_body = file("${path.module}/clusterissuer/clusterissuer.yaml")
  yaml_body = <<YAML
apiVersion: cert-manager.io/v1
kind: ClusterIssuer
metadata:
  name: letsencrypt-cluster-issuer
spec:
  acme:
    server: https://acme-v02.api.letsencrypt.org/directory
    email: ${var.email}
    privateKeySecretRef:
      name: letsencrypt-cluster-issuer-key
    solvers:
    - http01:
       ingress:
         class: nginx
  YAML

  depends_on = [
    helm_release.cert-manager,
  ]
}

