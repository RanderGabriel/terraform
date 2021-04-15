locals {
  common_tags = {
    Service     = "Terraform Course"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Rander Oliveira"
  }

  ip_file_path = "config/ips.json"
}