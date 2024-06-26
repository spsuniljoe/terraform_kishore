variable "ami" {
  default = "ami-00fa32593b478ad6e"
}
variable "key_name" {
  default = "VKNMatrimony"
}
variable "monitoring" {
  default = true
}
variable "vpc_security_group_ids" {
  default = ["sg-0577927322bbe2b2a"]
}
variable "associate_public_ip_address" {
  default = true
}
variable "instance_initiated_shutdown_behavior" {
  default = "stop"
}
variable "source_dest_check" {
  default = false
}
variable "disable_api_termination" {
  default = true
}
