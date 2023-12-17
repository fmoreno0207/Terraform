variable "ami_id" {
  description = "ID de la AMI para la instancia EC2"
  type        = string
  default     = "ami-0fc5d935ebf8bc3bc"
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t2.micro"
}

#variable "key_name" {
#  description = "Nombre de la clave SSH"
#  type        = string
#  default     = "${path.module}/id_rsa.pub"
#}

variable "instance_name" {
  description = "Nombre de la instancia EC2"
  type        = string
  default     = "my-ec2-instance"
}

variable "region" {
  description = "La región de AWS"
  type        = string
  default     = "us-east-1"
}

variable "subnet_id" {
  description = "ID de la subred para la instancia EC2"
  type        = string
  default = "module.networking.subnet_a_id"
}