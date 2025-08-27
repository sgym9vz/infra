variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "VPC name tag"
  type        = string
  default     = "test-vpc"
}

variable "aws_profile" {
  type = string
  default = "default"
}