# Provision 2 application on an AWS EKS cluster

## Description
This repo contains terraform code to provision and manage two separate applications on a kubernetes cluster using AWS EKS. The components of the infrasture are split up into 3 separate modules which are invoked separately to reduce the size of the state file and boost build times.

The 3 modules include:
- `The EKS cluster`: Including a VPC and 6 subnets
- `The kubernetes manifests` for the entire deployment including but not limited to ssl certificates, ingress controllers, monitoring and logging tools such as prometheus, grafana and loki
- `Route53` - To create a hosted zone for a domain and map A records to the subdomains of the provisioned services it to the ingress controller.

## Requirements
- An AWS account
- AWS CLI configured for a terraform IAM user (default)
- terraform installed on your computer
  
### Default settings
- `cluster_name` = kube-marauder
- `region` = us-east-1
- `aws_profile` = terraform

# How to use
Since this was built with a modularized approach, each module will have to be deployed independently. Navigate into the root of every module and run the following commands. 
``` bash
terraform init
terraform plan
terraform apply
```
**
NOTE Module dependency is as follows route53 > manifests > kube-cluster.
Therefore, start the kube-cluster first then deploy the manifests and then route53
**
# Clean up
I the event that the infrastructure is no longer needed, run the command below in every module in reverse order of creation to destroy the infrastructure.
```bash
terraform destroy
```
