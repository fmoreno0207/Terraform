# Salida para atachar el load balancer
output "launch_config_name" {
  value = aws_launch_configuration.launch_config.id
}

  output "asg_name" {
    value = aws_autoscaling_group.autoscaling_group.name
  }