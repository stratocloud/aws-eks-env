terraform {
  required_version = ">= 1.1.8, <= 1.2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}