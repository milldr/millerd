module "cdn" {
  source  = "cloudposse/cloudfront-s3-cdn/aws"
  version = "v0.75.0"

  name              = var.name
  aliases           = [var.hostname]
  dns_alias_enabled = true
  parent_zone_name  = var.parent_zone_name
}
