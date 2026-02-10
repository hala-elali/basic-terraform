terraform {
  backend "s3" {
    bucket         = "myorg-terraform-state-freetier2026-us-east-1"
    key            = "envs/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
  resource "aws_vpc" "this" {
    cidr_block = var.vpc_cidr
  }

}


