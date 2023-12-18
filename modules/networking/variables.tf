variable "region" {
  description = "La región de AWS"
  type        = string
  default = "us-east-1"
}

variable "vpc_name" {
  description = "Nombre de la VPC"
  type        = string
  default = "mi-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block para la VPC"
  type        = string
  default = "10.0.0.0/16"
}

variable "subnet_a_cidr" {
  description = "CIDR block para la Subred A"
  type        = string
  default = "10.0.1.0/24"
}

variable "subnet_b_cidr" {
  description = "CIDR block para la Subred  B"
  type        = string
  default = "10.0.2.0/24"
}

##########################################################
variable "vpc_dev" {
  description = "VPC para env DEV"
  type        = string
  default = "vpc-dev"
}

variable "vpc_cidr_dev" {
  description = "CIDR block para la VPC-DEV"
  type        = string
  default = "10.0.0.0/16"
}

variable "subnet_dev_cidr" {
  description = "CIDR block para la Subred DEV"
  type        = string
  default = "10.0.1.0/24"
}

##########################################################