# Salida para atachar el load balancer
output "launch_config_name" {
  value = aws_launch_configuration.launch_config.id
}

  output "asg_name" {
    value = aws_autoscaling_group.autoscaling_group.name
  }

# resource "aws_autoscaling_attachment" "asg-attach" {
#   autoscaling_group_name  = "${aws_autoscaling_group.asg.id}"
#   alb_target_group_arn    = aws_lb_target_group.lb_target_group.id
# }