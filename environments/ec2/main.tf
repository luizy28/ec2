data "aws_vpc" "default-vpc" {
  # Specify the VPC ID of your existing VPC
  id = "vpc-0ac645c8c535bfe31"
}

data "aws_security_group" "launch-wizard-1" {
  # Specify the Security Group ID of your existing VPC
  id = "sg-01916723f229e5911"
}
