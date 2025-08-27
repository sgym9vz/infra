output "vpc_id" {
  value       = aws_vpc.main.id
  description = "Created VPC ID"
}
output "vpc_cidr" {
  value       = aws_vpc.main.cidr_block
  description = "VPC CIDR"
}