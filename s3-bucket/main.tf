terraform {
  required_version = "0.14.10"
  required_providers {
    aws = {
        source = "hashcorp/aws"
        version = "3.36.0"
    }
  }
}

provider "aws" {
    region = "sa-east-1"
    profile = "terraform"
}

resource "aws_s3_bucket" "b" {
  bucket = "terraform-bucket-teste-rander"
  acl    = "private"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}