module "vpc" {
  source      = "../../modules/vpc"
  name        = var.name
  cidr        = var.cidr
  environment = var.environment
}
