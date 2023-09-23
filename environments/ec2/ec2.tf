resource "aws_instance" "demo_instance" {
  ami                    = "ami-03a6eaae9938c858c"
  instance_type          = "t2.micro"
  subnet_id              = data.aws_vpc.default-vpc
  vpc_security_group_ids = [data.aws_security_group.launch-wizard-1]
}

# Declare an existing VPC using a data source
/*data "aws_vpc" "default-vpc" {
  id = "var.vpc_id"
}

# Declare a data source to fetch the subnet details
data "aws_subnet" "default-subnet" {
  id = "var.sunet_id" # Replace with the actual ID of the desired subnet
}*/
