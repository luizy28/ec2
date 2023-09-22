terraform {
  backend "s3" {
    bucket  = "bootcamp32-dev-13"
    region  = "us-east-1"
    key     = "ec2/terraform.tfstate"
    encrypt = true
  }
}