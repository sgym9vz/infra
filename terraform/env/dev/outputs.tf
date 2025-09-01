output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_arn" {
  value = module.vpc.vpc_arn
}

output "cidr_block" {
  value = module.vpc.cidr_block
}

output "ec2_public_ip" {
  value = module.ec2.public_ip
}