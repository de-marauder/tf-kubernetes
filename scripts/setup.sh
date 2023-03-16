## Download and set the location of the kubernetes cluster context config
# export KUBECONFIG=/etc/kubernetes/admin.conf
# echo "export KUBECONFIG=/etc/kubernetes/admin.conf" >>~/.bashrc

#####################################################################################
## Install Helm
#####################################################################################

# curl -LO https://get.helm.sh/helm-v3.11.1-linux-amd64.tar.gz
# tar -zxvf helm-v3.11.1-linux-amd64.tar.gz
# mv linux-amd64/helm /usr/local/bin/helm

#####################################################################################
## Cert manager installation using helm
#####################################################################################

# helm repo add jetstack https://charts.jetstack.io
# helm repo update
# helm install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --version v1.11.0 --set installCRDs=true --set webhook.timeoutSeconds=30

#####################################################################################

#####################################################################################
## Install nginx ingress controller with helm ##
#####################################################################################

# helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx 
# helm repo update
# helm install ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace
# helm --upgrade install ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace --set controller.service.type=NodePort
#####################################################################################

#####################################################################################

#####################################################################################
# ClusterIssuer configuration
#####################################################################################

# kubectl apply -f path/to/clusterissuer.yaml

#####################################################################################
## Apply deployment and services for web application (sock and vote appications)
#####################################################################################
# kubectl apply -f ./path/to/svc ./path/to/deployment

#####################################################################################

#####################################################################################
## Add helm repos for monitoring
#####################################################################################
# helm repo add prometheus-community https://prometheus-community.github.io/helm-charts # for grafana, prometheus and alertmanager
# helm repo add grafana https://grafana.github.io/helm-charts # For loki
# helm repo update
#####################################################################################

#####################################################################################
## Install prometheus, grafana and alertmanager using helm
#####################################################################################
## Install prom, grafana, alertmanager in one step for managing kubernetes

# helm install monitoring prometheus-community/kube-prometheus-stack --namespace monitoring --create-namespace
#####################################################################################

#####################################################################################
## Install Loki stack for log aggregation
#####################################################################################

# helm install loki grafana/loki-stack --version \
#   --namespace=monitoring \
#   --create-namespace \
#   -f "path/to/loki-values.yaml"

#####################################################################################

### OR 

#####################################################################################
## Install each component individually
#####################################################################################
# First prometheus
#####################################################################################
# helm install prometheus prometheus-community/prometheus --namespace prometheus --create-namespace
#####################################################################################
#####################################################################################
# Then grafana
#####################################################################################
## Install grafana using helm
#####################################################################################
# helm repo add grafana https://grafana.github.io/helm-charts
# helm install grafana grafana/grafana --namespace grafana --create-namespace
#####################################################################################

#####################################################################################
# GRAFANA LOGIN CREDENTIALS
#####################################################################################
# username: admin
# password: prom-operator
#####################################################################################

#####################################################################################
## Apply ingress
#####################################################################################
# kubectl apply -f path/to/all-ingress.yaml
#####################################################################################

#####################################################################################
## Apply certificate
#####################################################################################
# kubectl apply -f path/to/all-certificates.yaml
#####################################################################################

#####################################################################################
# Decode base64 secrets
# echo $BASE64_SECRET | base64 -d ; echo

#####################################################################################