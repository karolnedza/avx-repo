provider "aviatrix" {
  username     = "admin"
  password      = var.example
  controller_ip = "35.171.31.227"
  version       = "2.17.0"
}



resource "aviatrix_vpc" "aws_vpc" {
  cloud_type           = 1
  account_name         = "aws-account"
  region               = "eu-west-1"
  name                 = "Servicenow-VPC"
  cidr                 = var.pet_name_length
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
}
