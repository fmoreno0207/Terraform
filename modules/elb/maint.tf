# modules/elb/main.tf

provider "aws" {
  region = var.region
}

resource "aws_elb" "main" {
  name               = var.elb_name
  #load_balacer_type = "application"
  subnets = [var.subnet_id]
  security_groups = [aws_security_group.elb_sg.id]
  #availability_zones = var.availability_zones

#  enable_deletion_protection    = false
  listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  } 
  
 # Permite elimnar el recurso load balacncer
  lifecycle {
    prevent_destroy = false
  }
#  depends_on = [aws_autoscaling_attachment.attachment_lb]
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

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    name    = "sg-lb"
  }
}

resource "aws_lb_target_group" "lb_target_group" {
  name        = "target-group-lb"
  port        = 80
  protocol    = "HTTP"
  target_type = "instance"
  vpc_id      = var.vpc_id  # Reemplaza con el ID de tu VPC

  health_check {
    protocol     = "HTTP"
    port         = 80
    path         = "/"
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout      = 3
    interval     = 30
  }

  depends_on = [ aws_elb.main ]
}

# resource "aws_lb_listener" "listener_80" {
#   load_balancer_arn = aws_elb.main.arn
#   port              = 80
#   protocol          = "HTTP"

#   default_action {
#     type = "forward"
#     target_group_arn = aws_lb_target_group.lb_target_group.arn

#   }

# #   depends_on = [ aws_lb_target_group.lb_target_group ]
#  }