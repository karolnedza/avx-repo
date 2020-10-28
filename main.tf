provider "aviatrix" {
  username     = "admin"
  password      = var.environment
  controller_ip = "35.171.31.227"
  version       = "2.17.0"
}



resource "aviatrix_vpc" "aws_vpc" {
  cloud_type           = 1
  account_name         = "aws-account"
  region               = "eu-west-1"
  name                 = var.example
  cidr                 = "10.44.0.0/16"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}
