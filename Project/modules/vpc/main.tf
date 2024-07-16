terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.56.1" # Specify the appropriate version you are using
    }
  }
}

resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = {
    Name = "${var.environment}-vpc"
  }
}
