variable "region" {
  description = "To define the region of the resouce to define"
  type        = string
}

variable "instance_count" {
  description = "This to define the number of ec2 instances"
  type        = number
}

variable "instance_ami" {
  description = "This for the instance ami"
  type        = string
}

variable "instance_type" {
  description = "This to define the type of the instance"
  type        = string
}

variable "key_name" {
  description = "this contain the key name"
  type        = string
}

variable "security_group_id" {
  description = "This contains the IDs of the security groups"
  type        = list(string)
}

variable "subnet_id" {
  description = "This contains the subnet IDs"
  type        = string
}

variable "instance_name" {
  description = "This contain the name of the instance"
  type        = string
}