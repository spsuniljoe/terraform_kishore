variable "new_region" {
  description = "The AWS region where the VPC will be created"
  type        = string
}

variable "new_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "new_environment" {
  description = "The environment for the VPC (e.g., dev, uat, prod)"
  type        = string
}
