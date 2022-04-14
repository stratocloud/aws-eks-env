
### AWS variables

aws_region      = "us-east-1"
aws_account_ids = [""]


### VPC module variables


vpc_name        = "demo-vpc"
vpc_cidr        = "192.168.0.0/16"
azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
private_subnets = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24"]
public_subnets  = ["192.168.10.0/24", "192.168.11.0/24", "192.168.12.0/24"]
intra_subnets   = ["192.168.20.0/24", "192.168.21.0/24", "192.168.22.0/24"]

single_nat_gateway = true
enable_nat_gateway = true

### EKS module variables

cluster_name    = "demo-eks"
cluster_version = "1.22"


eks_node_groups = [
  {
    name           = "nodegroup-1a"
    min_size       = 1
    max_size       = 1
    desired_size   = 1
    capacity_type  = "SPOT"
    disk_size      = 50
    instance_types = ["m6i.large", "t3a.large", "t3a.xlarge"]
    labels = {
      platform = "apps"
      env      = "dev"
    }
    taints = [
      {
        key    = "platform"
        value  = "apps"
        effect = "NO_SCHEDULE"
      }
    ]
  },
  {
    name           = "nodegroup-1b"
    min_size       = 1
    max_size       = 1
    desired_size   = 1
    capacity_type  = "SPOT"
    disk_size      = 50
    instance_types = ["m6i.large", "t3a.large", "t3a.xlarge"]
    labels = {
      platform = "apps"
      env      = "dev"
    }
    taints = [
      {
        key    = "platform"
        value  = "apps"
        effect = "NO_SCHEDULE"
      }
    ]
  }
]


tags = {
  Customer   = "demo"
  Purpose    = "Business"
  CostCenter = "001"
  Department = "IT"
  Owner      = "demo"
}