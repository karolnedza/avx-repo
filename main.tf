provider "aws" {
  region     = "us-east-1"
  access_key = "AAAA"
  secret_key = "ABABA"
#   access_key = var.aws_access_key
#   secret_key = var.aws_secret_key
}

resource "aws_vpc" "aws_vpc" {
  cidr_block       = "10.199.199.0/24"
  tags = {
      Name = "aws-us-east1-spoke1"
    }
}
