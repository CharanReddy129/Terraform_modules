resource "aws_security_group" "vpc_sg" {
  vpc_id = aws_vpc.vpc.id
  name = "vpc_sg"
  
  dynamic "ingress" {
  for_each = var.ingress_rules
  content {
    from_port = ingress.value.from_port
    to_port = ingress.value.to_port
    protocol = ingress.value.protocol
    cidr_blocks = ingress.value.cidr_blocks
    }
  }
  
  dynamic "egress" {
    for_each = var.egress_rules
    content {
      from_port = egress.value.from_port
      to_port = egress.value.to_port
      protocol = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }
}