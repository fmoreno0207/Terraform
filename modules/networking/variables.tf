variable "region" {
  description = "La región de AWS"
  type        = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block para la VPC"
  type        = string
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Nombre de la VPC"
  type        = string
  default = "mi-vpc"
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