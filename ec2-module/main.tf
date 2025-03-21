terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = " 5.91.0"
    }
  }
}

provider "aws" {
  region = var.region
}

# resource "aws_key_pair" "demo_key" {
#   key_name = "demo_key"
#   public_key = file(var.key_name)
# }

resource "aws_instance" "ec2" {
  count                  = var.instance_count
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = var.security_group_id
  subnet_id              = var.subnet_id
  
  tags = {
    Name = "${var.instance_name}-${count.index + 1}"
  }

}