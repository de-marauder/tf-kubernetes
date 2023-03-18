module "eks" {
  source                   = "terraform-aws-modules/eks/aws"
  cluster_name             = var.cluster_name
  subnet_ids               = module.vpc.public_subnets
  control_plane_subnet_ids = module.vpc.public_subnets
  vpc_id                   = module.vpc.vpc_id

  version = "~> 19.0"

  cluster_version = "1.25"
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
    marauding-node = {
      min_size     = 3
      max_size     = 5
      desired_size = 3

      instance_types = ["t3.medium"]
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
