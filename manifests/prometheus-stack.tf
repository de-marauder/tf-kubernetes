# resource "kubectl_manifest" "prom-stack-ns" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/ns.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sa-release-name-grafana" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sa-release-name-grafana.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sa-release-name-kube-promethe-alertmanager" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sa-release-name-kube-promethe-alertmanager.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sa-release-name-kube-state-metrics" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sa-release-name-kube-state-metrics.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sa-release-name-prometheus-node-exporter" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sa-release-name-prometheus-node-exporter.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sa-release-name-kube-promethe-operator" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sa-release-name-kube-promethe-operator.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sa-release-name-kube-promethe-prometheus" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sa-release-name-kube-promethe-prometheus.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-secret-release-name-grafana" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/secret-release-name-grafana.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-secret-alertmanager-release-name-kube-promethe-alertmanager" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/secret-alertmanager-release-name-kube-promethe-alertmanager.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-grafana-config-dashboards" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-grafana-config-dashboards.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-grafana" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-grafana.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-grafana-datasource" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-grafana-datasource.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-alertmanager-overview" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-alertmanager-overview.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-apiserver" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-apiserver.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-cluster-total" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-cluster-total.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-controller-manager" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-controller-manager.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-etcd" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-etcd.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-grafana-overview" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-grafana-overview.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-k8s-coredns" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-k8s-coredns.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-k8s-resources-cluster" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-k8s-resources-cluster.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-k8s-resources-namespace" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-k8s-resources-namespace.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-k8s-resources-node" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-k8s-resources-node.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-k8s-resources-pod" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-k8s-resources-pod.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-k8s-resources-workload" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-k8s-resources-workload.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-k8s-resources-workloads-namespace" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-k8s-resources-workloads-namespace.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-kubelet" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-kubelet.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-namespace-by-pod" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-namespace-by-pod.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-namespace-by-workload" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-namespace-by-workload.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-node-cluster-rsrc-use" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-node-cluster-rsrc-use.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-node-rsrc-use" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-node-rsrc-use.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-nodes-darwin" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-nodes-darwin.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-nodes" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-nodes.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-persistentvolumesusage" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-persistentvolumesusage.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-pod-total" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-pod-total.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-prometheus" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-prometheus.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-proxy" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-proxy.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-scheduler" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-scheduler.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-kube-promethe-workload-total" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-kube-promethe-workload-total.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cr-release-name-grafana-clusterrole" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cr-release-name-grafana-clusterrole.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cr-release-name-kube-state-metrics" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cr-release-name-kube-state-metrics.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cr-release-name-kube-promethe-prometheus" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cr-release-name-kube-promethe-prometheus.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-crb-release-name-grafana-clusterrolebinding" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/crb-release-name-grafana-clusterrolebinding.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-crb-release-name-kube-state-metrics" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/crb-release-name-kube-state-metrics.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-crb-release-name-kube-promethe-operator" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/crb-release-name-kube-promethe-operator.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-crb-release-name-kube-promethe-prometheus" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/crb-release-name-kube-promethe-prometheus.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-role-release-name-grafana" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/role-release-name-grafana.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-rb-release-name-grafana" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/rb-release-name-grafana.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-svc-release-name-grafana" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/svc-release-name-grafana.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-svc-release-name-kube-state-metrics" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/svc-release-name-kube-state-metrics.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-svc-release-name-prometheus-node-exporter" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/svc-release-name-prometheus-node-exporter.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-svc-release-name-kube-promethe-alertmanager" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/svc-release-name-kube-promethe-alertmanager.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-svc-release-name-kube-promethe-coredns" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/svc-release-name-kube-promethe-coredns.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-svc-release-name-kube-promethe-kube-controller-manager" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/svc-release-name-kube-promethe-kube-controller-manager.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-svc-release-name-kube-promethe-kube-etcd" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/svc-release-name-kube-promethe-kube-etcd.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-svc-release-name-kube-promethe-kube-proxy" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/svc-release-name-kube-promethe-kube-proxy.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-svc-release-name-kube-promethe-kube-scheduler" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/svc-release-name-kube-promethe-kube-scheduler.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-svc-release-name-kube-promethe-operator" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/svc-release-name-kube-promethe-operator.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-svc-release-name-kube-promethe-prometheus" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/svc-release-name-kube-promethe-prometheus.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-ds-release-name-prometheus-node-exporter" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/ds-release-name-prometheus-node-exporter.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-dep-release-name-grafana" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/dep-release-name-grafana.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-dep-release-name-kube-state-metrics" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/dep-release-name-kube-state-metrics.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-dep-release-name-kube-promethe-operator" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/dep-release-name-kube-promethe-operator.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-alert-release-name-kube-promethe-alertmanager" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/alert-release-name-kube-promethe-alertmanager.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-mwc-release-name-kube-promethe-admission" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/mwc-release-name-kube-promethe-admission.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-prom-release-name-kube-promethe-prometheus" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/prom-release-name-kube-promethe-prometheus.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-alertmanager-rules" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-alertmanager.rules.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-config-reloaders" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-config-reloaders.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-etcd" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-etcd.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-general-rules" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-general.rules.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-k8s-rules" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-k8s.rules.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kube-apiserver-availability-rules" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kube-apiserver-availability.rules.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kube-apiserver-burnrate-rules" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kube-apiserver-burnrate.rules.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kube-apiserver-histogram-rules" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kube-apiserver-histogram.rules.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kube-apiserver-slos" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kube-apiserver-slos.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kube-prometheus-general-rules" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kube-prometheus-general.rules.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kube-prometheus-node-recording-rules" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kube-prometheus-node-recording.rules.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kube-scheduler-rules" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kube-scheduler.rules.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kube-state-metrics" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kube-state-metrics.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kubelet-rules" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kubelet.rules.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kubernetes-apps" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kubernetes-apps.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kubernetes-resources" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kubernetes-resources.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kubernetes-storage" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kubernetes-storage.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kubernetes-system-apiserver" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kubernetes-system-apiserver.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kubernetes-system-controller-manager" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kubernetes-system-controller-manager.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kubernetes-system-kube-proxy" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kubernetes-system-kube-proxy.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kubernetes-system-kubelet" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kubernetes-system-kubelet.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kubernetes-system-scheduler" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kubernetes-system-scheduler.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-kubernetes-system" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-kubernetes-system.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-node-exporter-rules" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-node-exporter.rules.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-node-exporter" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-node-exporter.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-node-network" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-node-network.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-node-rules" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-node.rules.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-prometheus-operator" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-prometheus-operator.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-promRule-release-name-kube-promethe-prometheus" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/promRule-release-name-kube-promethe-prometheus.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sm-release-name-grafana" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sm-release-name-grafana.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sm-release-name-kube-state-metrics" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sm-release-name-kube-state-metrics.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sm-release-name-prometheus-node-exporter" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sm-release-name-prometheus-node-exporter.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sm-release-name-kube-promethe-alertmanager" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sm-release-name-kube-promethe-alertmanager.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sm-release-name-kube-promethe-coredns" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sm-release-name-kube-promethe-coredns.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sm-release-name-kube-promethe-apiserver" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sm-release-name-kube-promethe-apiserver.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sm-release-name-kube-promethe-kube-controller-manager" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sm-release-name-kube-promethe-kube-controller-manager.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sm-release-name-kube-promethe-kube-etcd" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sm-release-name-kube-promethe-kube-etcd.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sm-release-name-kube-promethe-kube-proxy" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sm-release-name-kube-promethe-kube-proxy.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sm-release-name-kube-promethe-kube-scheduler" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sm-release-name-kube-promethe-kube-scheduler.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sm-release-name-kube-promethe-kubelet" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sm-release-name-kube-promethe-kubelet.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sm-release-name-kube-promethe-operator" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sm-release-name-kube-promethe-operator.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sm-release-name-kube-promethe-prometheus" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sm-release-name-kube-promethe-prometheus.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-vwc-release-name-kube-promethe-admission" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/vwc-release-name-kube-promethe-admission.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sa-release-name-grafana-test" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sa-release-name-grafana-test.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-sa-release-name-kube-promethe-admission" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/sa-release-name-kube-promethe-admission.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cm-release-name-grafana-test" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cm-release-name-grafana-test.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-cr-release-name-kube-promethe-admission" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/cr-release-name-kube-promethe-admission.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-crb-release-name-kube-promethe-admission" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/crb-release-name-kube-promethe-admission.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-role-release-name-kube-promethe-admission" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/role-release-name-kube-promethe-admission.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-rb-release-name-kube-promethe-admission" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/rb-release-name-kube-promethe-admission.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-pod-release-name-grafana-test" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/pod-release-name-grafana-test.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-job-release-name-kube-promethe-admission-create" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/job-release-name-kube-promethe-admission-create.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

# resource "kubectl_manifest" "prom-stack-job-release-name-kube-promethe-admission-patch" {
#   yaml_body = file("${path.module}/helm/prometheus-stack/job-release-name-kube-promethe-admission-patch.yaml")
#   depends_on = [
#     kubectl_manifest.prom-stack-ns
#   ]
# }

