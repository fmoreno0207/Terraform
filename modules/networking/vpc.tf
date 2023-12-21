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

# ############# Subnet B ##############
# resource "aws_subnet" "subnet_b" {
#   vpc_id                  = aws_vpc.main.id
#   cidr_block              = var.subnet_b_cidr
#   map_public_ip_on_launch = true

#   tags = {
#     Name = "subnet-b"
#   }
# }
############## VPC-DEV ##############
resource "aws_vpc" "dev" {
  cidr_block = var.vpc_cidr_dev

  tags = {
    Name = var.vpc_dev
  }
}

resource "aws_subnet" "subnet_dev" {
  vpc_id                  = aws_vpc.dev.id
  cidr_block              = var.subnet_dev_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-dev"
  }
}

# ############# Subnet DEV ##############
# resource "aws_subnet" "subnet_dev" {
#   vpc_id                  = aws_vpc.dev.id
#   cidr_block              = var.subnet_a_cidr
#   map_public_ip_on_launch = true

#   tags = {
#     Name = "subnet-a"
#   }
# }