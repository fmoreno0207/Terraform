# modules/elb/main.tf

provider "aws" {
  region = var.region
}

resource "aws_security_group" "elb_sg" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_elb" "main" {
  name               = var.elb_name
  #load_balacer_type = "application"
  subnets = [var.subnet_id]
  security_groups = [aws_security_group.elb_sg.id]
  #availability_zones = var.availability_zones
  
  listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  } 
}