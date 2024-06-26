resource "aws_instance" "ec2" {
  ami                                  = var.ami
  instance_type                        = local.instance_type
  key_name                             = var.key_name
  monitoring                           = var.monitoring
  vpc_security_group_ids               = var.vpc_security_group_ids
  associate_public_ip_address          = var.associate_public_ip_address
  instance_initiated_shutdown_behavior = var.instance_initiated_shutdown_behavior
  source_dest_check                    = var.source_dest_check
  disable_api_termination              = var.disable_api_termination
}

locals {
  instance_type = "t2.micro"
}

output "ec2Output" {
  value = aws_instance.ec2[*]
}
