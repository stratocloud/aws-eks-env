data "aws_iam_policy_document" "assume_policy" {

  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"]
    }

    condition {
      test     = "ForAnyValue:StringLike"
      variable = "aws:PrincipalArn"
      values = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/${var.admin_user}"
      ]
    }
  }
}
  
resource "aws_iam_role" "cluster_admin" {
  name               = join("-", [var.cluster_name, "cluster-admin"])
  assume_role_policy = data.aws_iam_policy_document.assume_policy.json
  description        = "IAM role for rull Admin access on the ${var.cluster_name} EKS Cluster"
}
