module "s3_website" {
  source  = "cloudposse/s3-website/aws"
  version = "v0.17.1"

  name = var.name
  hostname                = var.hostname
  force_destroy           = var.force_destroy
  encryption_enabled      = var.encryption_enabled
  allow_ssl_requests_only = var.allow_ssl_requests_only

  # parent_zone_name   = var.parent_zone_name
  # context = module.this.context
}

module "cdn" {
  source = "cloudposse/cloudfront-s3-cdn/aws"
  version = "v0.75.0"

  aliases           = [var.hostname]
  dns_alias_enabled = true
  parent_zone_name  = var.parent_zone_name
  s3_origins = {
    domain_name = module.s3_bucket.bucket_regional_domain_name
    origin_id   = module.s3_bucket.bucket_id
    origin_path = null
    s3_origin_config = {
      origin_access_identity = null # will get translated to the origin_access_identity used by the origin created by this module.
    }
  }
  origin_groups = {
    primary_origin_id  = null # will get translated to the origin id of the origin created by this module.
    failover_origin_id = module.s3_bucket.bucket_id
    failover_criteria  = [
      403,
      404,
      500,
      502
    ]
  }
}
