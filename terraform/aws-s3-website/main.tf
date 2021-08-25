module "cdn" {
  source  = "cloudposse/cloudfront-s3-cdn/aws"
  version = "v0.75.0"

  name = var.name

  aliases           = [var.hostname]
  dns_alias_enabled = true
  parent_zone_name  = var.hostname # parent hosted zone has the same hostname

  # SSL Settings
  allow_ssl_requests_only = true # true by default, but set anyway
  acm_certificate_arn     = data.aws_acm_certificate.app.arn

  cors_allowed_headers = ["*"]
  cors_allowed_methods = ["GET", "HEAD"]
  cors_allowed_origins = ["*.${var.hostname}"]
  cors_expose_headers  = ["ETag"]
}
