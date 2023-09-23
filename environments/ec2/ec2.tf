resource "aws_instance" "demo_instance" {
  ami                    = "ami-03a6eaae9938c858c"
  instance_type          = "t2.micro"
  subnet_id              = data.aws_vpc.subnet_id
  vpc_security_group_ids = [data.aws_security_group.vpc_security_group_ids]
}
