terraform {
  required_version = "0.15.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.36.0"
    }
  }
}

provider "aws" {
  region  = "sa-east-1"
  profile = "terraform"
}

resource "aws_s3_bucket" "bucket-teste-terraform" {
  bucket = "terraform-bucket-teste-rander-editado"
  acl    = "private"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Owner       = "Rander Oliveira"
    UpdatedAt   = "2021-04-14"
  }
}