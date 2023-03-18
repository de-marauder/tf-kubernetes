#!/bin/bash
set -o errexit

# Setup aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip -u awscliv2.zip

sudo ./aws/install

# Get cluster configuration for remote connection
aws eks --region example_region update-kubeconfig --name cluster_name
