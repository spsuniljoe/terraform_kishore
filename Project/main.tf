provider "aws" {
  alias   = "dev"
  region  = "ap-south-1"
  profile = "ellwin"
}

# provider "aws" {
#   alias   = "uat"
#   region  = "ap-south-2"
#   profile = "ellwin"
# }

# provider "aws" {
#   alias   = "prod"
#   region  = "ap-south-1"
#   profile = "sln"
# }

module "vpc" {
  source = "./modules/vpc"
  providers = {
    aws = aws.dev
  }
  region      = var.new_region
  cidr_block  = var.new_cidr_block
  environment = terraform.workspace
}

output "vpc_id" {
  value = module.vpc.vpc_id
}
