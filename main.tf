provider "aviatrix" {
  username     = "admin"
  password      = var.ctrl_password
  controller_ip = "35.171.31.227"
  version       = "2.16.3"
}



resource "aviatrix_vpc" "aws_vpc" {
  cloud_type           = 1
  account_name         = "aws-account"
  region               = "us-west-1"
  name                 = "aws-vpc-test"
  cidr                 = var.vpc_cidr
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}
