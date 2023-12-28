# modules/elb/variables.tf

variable "region" {}
variable "vpc_id" {}
variable "security_group_name" {
  description = "Name of the security group for ELB"
}
variable "security_group_description" {
  description = "Description of the security group for ELB"
}
variable "elb_name" {}

variable "availability_zones" {  
}

variable "subnet_id" {
  description = "ID de la subred"
}