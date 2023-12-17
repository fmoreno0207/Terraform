# main.tf

provider "aws" {
  region = var.region
}
############## VPC ##############
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}

############## Subnet A ##############
resource "aws_subnet" "subnet_a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_a_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-a"
  }
}

############## Subnet B ##############
resource "aws_subnet" "subnet_b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_b_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-b"
  }
}