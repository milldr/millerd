provider "aws" {
  profile = "milldr"
  region  = "us-west-2"
}

terraform {
  backend "s3" {
    profile = "milldr"
    bucket  = "milldr-tf-state"
    key     = "milldr/hub/aws-s3-website"
    region  = "us-west-2"
  }
}
