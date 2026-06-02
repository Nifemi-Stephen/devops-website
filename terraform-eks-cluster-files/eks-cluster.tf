module "eks" {

  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.30"

  enable_cluster_creator_admin_permissions = true

  cluster_endpoint_public_access = true

  enable_irsa = true

  vpc_id = module.vpc.vpc_id

  subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = {

    default = {

      instance_types = ["t3.medium"]
      ami_type       = "AL2_x86_64"

      min_size     = 2
      max_size     = 3
      desired_size = 2
    }
  }
}
