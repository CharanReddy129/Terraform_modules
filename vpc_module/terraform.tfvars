region          = "ap-south-1"
vpc_name        = "demo-vpc"
vpc_cidr_range  = "10.0.0.0/16"
azs             = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
