resource "aws_instance" "demo_instance" {
  subnet_id              = "subnet-071e4be63d59a6296"
  ami                    = "ami-03a6eaae9938c858c"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg-01916723f229e5911]
}


