terraform {
  required_providers {
    aws = {
      source   = "hashicorp/aws"
      version  = "~> 3.0"
    }
  }
  required_version = ">= 1.1.8"

  cloud {
    organization = "stratocloud"

    workspaces {
      name = "aws-kubernetes-env"
    }
  }
}