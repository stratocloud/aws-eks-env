terraform {
  cloud {
    organization = "stratocloud"

    workspaces {
      name = "aws-eks-env"
    }
  }
}
