terraform {
  required_version = "0.15.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.36.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
}


provider "aws" {
  region  = "sa-east-1"
  profile = "terraform"
}
