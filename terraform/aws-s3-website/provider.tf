provider "aws" {
  profile = "milldr"
  region  = var.app_region
}

provider "aws" {
  alias   = "acm_region"
  profile = "milldr"
  region  = var.acm_region
}


terraform {
  backend "s3" {
    profile = "milldr"
    bucket  = "milldr-tf-state"
    key     = "milldr/hub/aws-s3-website"
    region  = "us-west-2"
  }
}
