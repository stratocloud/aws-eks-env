data "aws_caller_identity" "current" {

}

data "aws_region" "current" {

}

data "aws_eks_cluster" "default" {
  name = local.cluster_name
}

data "aws_eks_cluster_auth" "default" {
  name = local.cluster_name
}
