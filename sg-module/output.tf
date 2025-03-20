output "security_group_id" {
  description = "This contains the ID of the security group"
  value       = aws_security_group.sg_module.id
}