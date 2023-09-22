module "ec2" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.5.0"

 # name = "${var.project}-ec2"
  #cidr = var.vpc_cidr
}

resource "aws_subnet" "eks-demo-vpc" {
    vpc_id = "vpc-02c9eaeff24863284"
    cidr_block = "10.10.10.0/20"
}

resource "aws_instance" "test_ec2" {
    ami = "ami-033b95fb8079dc481"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.exist_vpc.id
}

  /*
  azs             = var.availability_zones
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway   = false
  single_nat_gateway   = false
  enable_dns_hostnames = false

  enable_flow_log                      = true
  create_flow_log_cloudwatch_iam_role  = true
  create_flow_log_cloudwatch_log_group = true

  public_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/elb"                    = 1
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"           = 1
  }
  
}
*/