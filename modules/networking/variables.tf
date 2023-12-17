variable "region" {
  description = "La región de AWS"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block para la VPC"
  type        = string
}

variable "vpc_name" {
  description = "Nombre de la VPC"
  type        = string
}

variable "subnet_a_cidr" {
  description = "CIDR block para la Subred A"
  type        = string
}

variable "subnet_b_cidr" {
  description = "CIDR block para la Subred B"
  type        = string
}