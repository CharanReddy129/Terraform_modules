output "instance_ids" {
  value = aws_instance.ec2[*].id
}

output "public_ip" {
  value = aws_instance.ec2[*].public_ip
}