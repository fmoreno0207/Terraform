# modules/instances/variables.tf

variable "ami_id" {
  description = "ID de la AMI para la instancia EC2"
  type        = string
  default = "ami-0fc5d935ebf8bc3bc"
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default = "t2.micro"
}

variable "key_name" {
  description = "Nombre de la clave SSH"
  type        = string
  default = "id_rsa.pub"
}

variable "instance_name" {
  description = "Nombre de la instancia EC2"
  type        = string
  default = "my-ec2-instance"
}