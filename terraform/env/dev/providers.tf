terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
#  backend "s3" {}  # values are passed from CLI in the workflow
}

provider "aws" {
  region = var.aws_region
}
