provider "aws" {
  region = var.region
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  associate_public_ip_address = true
  
  tags = {
    Name = var.instance_name
  }
}

resource "aws_key_pair" "dev" {
  key_name = var.key_name
  public_key = file("${path.module}/id_rsa.pub") 
}