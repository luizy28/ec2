data "aws_vpc" "default-vpc" {
  # Specify the VPC ID of your existing VPC
  id = var.vpc_id
}

data "aws_security_group" "launch-wizard-1" {
  # Specify the Security Group ID of your existing VPC
  id = var.vpc_security_group_ids
}

data "aws_subnet" "default-subnet" {
  id = var.subnet_id
}