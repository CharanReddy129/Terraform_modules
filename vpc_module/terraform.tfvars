region          = "ap-south-1"
vpc_name        = "demo-vpc"
vpc_cidr_range  = "10.0.0.0/16"
azs             = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]

ingress_rules = [ {
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = [ "0.0.0.0/0" ]
},
{
  from_port = 80
  to_port = 80
  protocol = "tcp"
  cidr_blocks = [ "0.0.0.0/0" ]
},
{
  from_port = 443
  to_port = 443
  protocol = "tcp"
  cidr_blocks = [ "0.0.0.0/0" ]
} ]

egress_rules = [ {
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = [ "0.0.0.0/0" ]
} ]