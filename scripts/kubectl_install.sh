#!/bin/bash
sudo su -c '
                # kubectl install
                sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
                sudo echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee --append /etc/apt/sources.list.d/kubernetes.list
                sudo apt-get update
                sudo apt-get install -y docker.io
                sudo apt-get install -y kubelet kubeadm kubectl kubernetes-cni
                # sudo sysctl -w vm.max_map_count=262144

                #  install aws cli
                apt install unzip -y
                curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip
                unzip -u awscliv2.zip
                sudo ./aws/install --update
                export AWS_ACCESS_KEY_ID=${var.AWS_ACCESS_KEY_ID}
                export AWS_SECRET_ACCESS_KEY=${var.AWS_SECRET_ACCESS_KEY}
                export AWS_DEFAULT_REGION=${var.region}

                echo "export AWS_ACCESS_KEY_ID=${var.AWS_ACCESS_KEY_ID}" >> ~/.bashrc
                echo "export AWS_SECRET_ACCESS_KEY=${var.AWS_SECRET_ACCESS_KEY}" >> ~/.bashrc
                echo "export AWS_DEFAULT_REGION=${var.region}" >> ~/.bashrc
                aws eks --region ${var.region} update-kubeconfig --name ${var.cluster_name}
                '
EOF
