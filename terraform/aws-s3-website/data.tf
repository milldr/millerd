data "aws_acm_certificate" "app" {
  /*
  * REQUIRED! This ACM certificate must exist and be ISSUED in the given account
  */
  provider = aws.acm_region
  domain   = var.hostname
  statuses = ["ISSUED"]
}
