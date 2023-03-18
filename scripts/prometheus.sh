#!/bin/bash 
# Install prometheus Custom Resource Definitions
set -o errexit

kubectl apply -f https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/v0.45.0/example/prometheus-operator-crd/monitoring.coreos.com_alertmanagers.yaml && \
kubectl apply -f https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/v0.45.0/example/prometheus-operator-crd/monitoring.coreos.com_podmonitors.yaml && \
kubectl apply -f https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/v0.45.0/example/prometheus-operator-crd/monitoring.coreos.com_probes.yaml && \
kubectl apply -f https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/v0.45.0/example/prometheus-operator-crd/monitoring.coreos.com_prometheuses.yaml && \
kubectl apply -f https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/v0.45.0/example/prometheus-operator-crd/monitoring.coreos.com_prometheusrules.yaml && \
kubectl apply -f https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/v0.45.0/example/prometheus-operator-crd/monitoring.coreos.com_servicemonitors.yaml && \
kubectl apply -f https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/v0.45.0/example/prometheus-operator-crd/monitoring.coreos.com_thanosrulers.yaml

d=/home/de-marauder/Documents/ALTSCHOOL/altschool-cloud-exercises/3rd-semester/exam/terraform/manifests/helm/prometheus-stack

kubectl apply -f $d/ns.yaml
kubectl apply -f $d
