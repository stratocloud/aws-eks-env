terraform {
  cloud {
    organization = "stratocloud"

    workspaces {
      name = "aws-kubernetes-env"
    }
  }
}
