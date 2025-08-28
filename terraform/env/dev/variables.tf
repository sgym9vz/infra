variable "aws_region" {
  description = "AWS region"  
  type        = string
}

variable "name" {
  description = "VPC Name tag"
  type        = string
}

variable "cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "environment" {
  description = "Environment name (e.g., dev)"
  type        = string
}
