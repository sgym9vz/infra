module "vpc" {
  source      = "../../modules/vpc"
  name        = var.name
  cidr        = var.cidr
  environment = var.environment
  public_subnet_cidr = var.public_subnet_cidr[0]
  availability_zone = var.availability_zone[0]
}

module "ec2" {
  source     = "../../modules/ec2"

  name       = var.environment
  vpc_id     = module.vpc.vpc_id
  subnet_id =  module.vpc.public_subnet_id
  my_ip_cidr = var.my_ip_cidr
  ami_id     = var.ami_id
  key_name   = var.key_name
}