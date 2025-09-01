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

variable "my_ip_cidr" {
  description = "あなたのグローバルIP/32"
  type        = string
}

variable "ami_id" {
  description = "Amazon Linux のAMI ID"
  type        = string
}

variable "key_name" {
  description = "既存のKeyPair名"
  type        = string
}

variable "public_subnet_cidr" {
  description = "Public subnet CIDR (e.g., 10.10.0.0/24)"
  type = string
}

variable "availability_zone" {
  description = "AZ for public subnet (e.g., ap-northeast-1a)"
  type = string
}