locals {
  aws_region       = "us-east-1"
  prefix           = "tsonu-canon"
  zone_name        = "tsonu.com"
  site_hostname    = "canon.${local.zone_name}"
  api_hostname     = "api.canon.${local.zone_name}"
  editorial_prefix = "editorial"

  default_tags = {
    Project   = local.prefix
    ManagedBy = "Terraform"
  }
}

data "aws_caller_identity" "current" {}
