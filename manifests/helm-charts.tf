resource "helm_release" "cert-manager" {
  name       = "cert-manager"
  repository = "https://charts.jetstack.io"
  chart      = "cert-manager"
  version    = "1.11.0"
  namespace  = "cert-manager"
  create_namespace = true

  set {
    name  = "installCRDs"
    value = "true"
  }
}

resource "helm_release" "ingress-nginx" {
  name       = "ingress-nginx"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  namespace  = "ingress-nginx"
  create_namespace = true

  depends_on = [
    helm_release.cert-manager
  ]
}

# resource "helm_release" "kube-prometheus-stack" { # grafana, alertmanager and prometheus
#   name       = "monitoring"
#   repository = "https://prometheus-community.github.io/helm-charts"
#   chart      = "kube-prometheus-stack"
#   namespace  = "monitoring"
#   create_namespace = true
# }

resource "helm_release" "loki-stack" {
  name       = "loki-stack"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "loki-stack"
  namespace  = "monitoring"
  create_namespace = true
  atomic = true
  recreate_pods =   true
  force_update  =   true

  # values = [
  #   "${file("${path.module}/helm/loki-values.yaml")}"
  # ]

# helm upgrade --install loki grafana/loki-stack  --set grafana.enabled=true,prometheus.enabled=true,prometheus.alertmanager.persistentVolume.enabled=false,prometheus.server.persistentVolume.enabled=false,loki.persistence.enabled=true,loki.persistence.storageClassName=standard,loki.persistence.size=5Gi -n monitoring --create-namespace
  set {
    name  = "promtail.enabled"
    value = true
  }
  set {
    name  = "grafana.enabled"
    value = true
  }
  set {
    name  = "prometheus.enabled"
    value = true
  }
  set {
    name  = "prometheus.alertmanager.persistentVolume.enabled"
    value = false
  }
  set {
    name  = "prometheus.server.persistentVolume.enabled"
    value = false
  }

  depends_on = [
    helm_release.ingress-nginx
  ]
}

output "ingress-nginx" {
  value=helm_release.ingress-nginx
  sensitive = true
}
