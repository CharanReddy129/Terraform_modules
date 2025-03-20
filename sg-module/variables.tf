variable "region" {
  description = "This is for defining the region of the resource"
  type        = string
}

variable "vpc_id" {
  description = "This for the vpc id to create the security group in it"
  type        = string
}

variable "ingress_rules" {
  description = "This contains the ingress rules that are need to accept in the security groups"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "egress_rules" {
  description = "This contains the egress rules that are need to accept in the security groups"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "tags" {
  description = "This contains the tag key and value"
  type        = map(string)
}