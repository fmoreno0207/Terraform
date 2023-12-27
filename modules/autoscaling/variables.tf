variable "region" {}
variable "launch_config_name" {}
variable "image_id" {}
variable "instance_type" {}
variable "desired_capacity" {}
variable "max_size" {}
variable "min_size" {}
variable "subnet_id" {
  type = list(string)
}
variable "tag_value" {}
variable "sg_name" { }

 variable "security_group_name" {
   description = "Name of the security group"
 }


 variable "vpc_id" {
  description = "ID de la VPC"
}