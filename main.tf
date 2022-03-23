terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

module "terraform-aws-tfc" {
  source  = "app.terraform.io/marina-org/tfc/aws"
  public_subnet   = var.public_subnet
  ingressrules = var.ingressrules
  version = "1.0.0"
}
