# dev/load_balancer.tf

module "elb" {
  source = "../modules/elb"  # Ajusta la ruta según tu estructura de directorios

  region                     = "us-east-1"  # Actualiza según tus necesidades
  vpc_id                     = module.networking.vpc_id  # Ajusta según tu configuración
  security_group_name        = "elb_sg"
  security_group_description = "ELB Security Group"
  elb_name                   = "Load-balancer"
  availability_zones = ["us-east-1a","us-east-1a"]
  subnet_id = module.networking.public_subnet_id
  
}
