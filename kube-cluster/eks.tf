module "eks" {
  source                   = "terraform-aws-modules/eks/aws"
  cluster_name             = var.cluster_name
  subnet_ids               = module.vpc.public_subnets
  control_plane_subnet_ids = module.vpc.public_subnets
  vpc_id                   = module.vpc.vpc_id
  # subnet_ids = module.vpc.private_subnets

  version = "~> 19.0"

  cluster_version = "1.24"
  # cluster_create_timeout          = "1h"
  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = true


  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }


  eks_managed_node_groups = {
    green = {
      min_size     = 1
      max_size     = 3
      desired_size = 2

      instance_types = ["t2.medium"]
      capacity_type  = "ON_DEMAND"

      labels = {
        name = "${var.cluster_name}-node"
      }
      tags = {
        Name        = "${var.cluster_name}-node"
        environment = "dev"
      }
    }
  }
  node_security_group_id = aws_security_group.worker_group_mgmt_one.id

  tags = {
    Name        = "${var.cluster_name}-node"
    environment = "dev"
  }

}


resource "aws_instance" "ci_bastion" {
  instance_type   = var.ci_instance_type
  ami             = data.aws_ami.ubuntu.id
  key_name        = aws_key_pair.kube-keypair.key_name
  subnet_id = module.vpc.public_subnets[0]

  security_groups = [aws_security_group.kube_ci_node_sg.id]
  vpc_security_group_ids = [aws_security_group.kube_ci_node_sg.id]

  tags = {
    Name = "kube-marauder-ci-bastion"
  }

  connection {
    host        = self.public_ip
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("ansible/${aws_key_pair.kube-keypair.key_name}")
  }

      user_data = <<-EOF
              #!/bin/bash
              sudo su -c '
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

  # provisioner "remote-exec" {
  #   inline = [
  #     "sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -",
  #     "sudo echo \"deb http://apt.kubernetes.io/ kubernetes-xenial main\" | sudo tee --append /etc/apt/sources.list.d/kubernetes.list",
  #     "sudo apt-get update",
  #     "sudo apt-get install -y docker.io",
  #     "sudo apt-get install -y kubelet kubeadm kubectl kubernetes-cni",
  #     "sudo sysctl -w vm.max_map_count=262144",
  #     # install aws cli
  #     "curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip",
  #     "unzip -u awscliv2.zip",
  #     # "sudo ./aws/install",
  #     # "export AWS_ACCESS_KEY_ID=${var.AWS_ACCESS_KEY_ID}",
  #     # "export AWS_SECRET_ACCESS_KEY=${var.AWS_SECRET_ACCESS_KEY}",
  #     # "export AWS_DEFAULT_REGION=${var.region}",
  #     # "aws eks --region ${var.region} update-kubeconfig --name ${var.cluster_name}"
  #   ]
  # }

  depends_on = [
    module.eks
  ]
}
