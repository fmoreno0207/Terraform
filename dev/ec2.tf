module "instances" {
  source    = "../modules/instances" # Ruta al directorio que contiene los archivos del módulo
  vpc_id    = module.networking.vpc_id
  subnet_id = module.networking.public_subnet_id
  ec2_name = "ec2-dev-test"
  
#  key_name  = "your-key-name" # Cambia esto según tu clave SSH
}
