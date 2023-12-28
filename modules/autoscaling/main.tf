provider "aws" {
  region = var.region
}

resource "aws_launch_configuration" "launch_config" {
  name = var.launch_config_name
  
  image_id = var.image_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.web_sg.id]

   user_data = <<-EOF
    #!/bin/bash
    # Actualizar el sistema
    sudo apt-get update -y
    sudo apt-get upgrade -y

    # Instalar Nginx
    sudo apt-get install nginx -y

    # Iniciar Nginx y esperar a que se complete la inicialización
    sudo service nginx start
    while ! nc -z localhost 80; do sleep 1; done
  EOF
             
}

resource "aws_autoscaling_group" "autoscaling_group" {
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  health_check_type    = "EC2"
  force_delete         = true
  

  launch_configuration = aws_launch_configuration.launch_config.id

  vpc_zone_identifier = var.subnet_id   # Se usa para asignar la subnet donde estara el elb
  
  tag {
    key                 = "Name"
    value               = var.tag_value
    propagate_at_launch = true
    
  }
}

resource "aws_security_group" "web_sg" {
  name        = var.security_group_name
#  description = var.security_group_description

  vpc_id = var.vpc_id
  

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
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
    Name = var.sg_name
  }
}

# resource "aws_autoscaling_attachment" "attachment_lb" {
#   autoscaling_group_name = aws_autoscaling_group.autoscaling_group.name
#   alb_target_group_arns  = [aws_lb_target_group.lb_target_group.arn]
# }

#   resource "aws_autoscaling_attachment" "attachment_lb" {
#     autoscaling_group_name = aws_autoscaling_group.autoscaling_group.name
#     aws_lb_target_group_arn = 
    
# }