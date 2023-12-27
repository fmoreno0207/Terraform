module "app_autoscaling" {
  source              = "../modules/autoscaling"
  region              = "us-east-1"
  launch_config_name  = "launch_config"
  image_id            = "ami-0c7217cdde317cfec"
  instance_type       = "t2.micro"
  desired_capacity    = 2
  max_size            = 3
  min_size            = 1
  subnet_id          = [module.networking.public_subnet_id]
  tag_value           = "asg-instance"
  vpc_id    = module.networking.vpc_id
  security_group_name = "acces autoscaling"
  sg_name = "sg acces autoscaling"
}