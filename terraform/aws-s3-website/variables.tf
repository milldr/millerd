variable "hostname" {
  type        = string
  description = "Name of website"
}

variable "name" {
  type        = string
  description = "Solution name, e.g. 'app' or 'jenkins'"
}

variable "parent_zone_name" {
  description = "The name of the parent Route53 zone to use for the distribution."
  type        = string
}
