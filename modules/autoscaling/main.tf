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
              yum update -y
              yum install -y nginx
              service nginx start
              chkconfig nginx on
              EOF
             
}

resource "aws_autoscaling_group" "autoscaling_group" {
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  health_check_type    = "EC2"
  force_delete         = true
  

  launch_configuration = aws_launch_configuration.launch_config.name

  vpc_zone_identifier = var.subnet_id
  
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
