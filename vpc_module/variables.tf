variable "region" {
  description = "This is used to set the region of the vpc"
  type        = string
}

variable "vpc_cidr_range" {
  description = "this contain the cidr_range of vpc"
  type        = string
}

variable "vpc_name" {
  description = "This contains the name of the vpc"
  type        = string
}

variable "azs" {
  description = "This contains the names of the availabilities zones you want to use"
  type        = list(string)
}

variable "public_subnets" {
  description = "This contains the cidr_range of the public subnets"
  type        = list(string)
}

variable "private_subnets" {
  description = "This contains the cidr_range of the private subnets"
  type        = list(string)
}

variable "ingress_rules" {
  description = "This contains the ingress rules"
  type = list(object({
    from_port = number
    to_port = number
    protocol = string
    cidr_blocks = list(string)
  }))
}

variable "egress_rules" {
  description = "This contains the egress rules"
  type = list(object({
    from_port = number
    to_port = number
    protocol = string
    cidr_blocks = list(string)
  }))
}