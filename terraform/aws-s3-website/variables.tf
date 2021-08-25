variable "acm_region" {
  type        = string
  description = "AWS Region with ACM certificates"
}
variable "app_region" {
  type        = string
  description = "AWS Region to deploy the app"
}
variable "hostname" {
  type        = string
  description = "Name of website"
}
variable "name" {
  type        = string
  description = "Solution name, e.g. 'app' or 'jenkins'"
}
