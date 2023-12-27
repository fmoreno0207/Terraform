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
