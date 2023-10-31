# Terraform Block
terraform {
  #required provider requirments
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.5.0"

    }
  }
  backend "s3" {
    bucket = "s3-terraform-statefile-as2"
    key = "terraform.tfstate"
    region = "ap-south-1"
  }
}

# Provider Block
provider "aws" {
  region = "ap-south-1"
}
