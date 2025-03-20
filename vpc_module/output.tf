output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet" {
  value = aws_subnet.public[*].id
}

output "private_subnet" {
  value = aws_subnet.private[*].id
}

output "gateway_id" {
  value = aws_internet_gateway.internet_gateway.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat_gateway.id
}

output "eip" {
  value = aws_eip.nat.public_ip
}