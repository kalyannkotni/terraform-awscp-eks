# Terraform Block
terraform {
  #required provider requirments
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.5.0"

    }
  }
  backend "s3" {}
}

# Provider Block
provider "aws" {
  region = "ap-south-1"
  profile = "default"
}

