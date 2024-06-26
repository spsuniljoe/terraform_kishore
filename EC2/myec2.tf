module "ec2module" {
  source                      = "../modules"
  associate_public_ip_address = false
  vpc_security_group_ids      = ["sg-01cdac20832eb62bc"]
  key_name                    = "Terraform-KeyPair"
}

resource "aws_eip" "lb" {
  instance = module.ec2module.ec2Output[0].id
  domain   = "vpc"

  tags = {
    Name = var.name
  }
}

output "ModuleOutput" {
  value = module.ec2module.ec2Output
}

output "ElasticIPOutput" {
  value = aws_eip.lb
}

variable "name" {}
