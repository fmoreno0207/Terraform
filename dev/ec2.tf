module "instances" {
  source    = "../modules/instances" # Ruta al directorio que contiene los archivos del módulo
  vpc_id    = module.networking.vpc_id
  subnet_id = module.networking.public_subnet_id
  ec2_name = "ec2-dev-test"
  
#  key_name  = "your-key-name" # Cambia esto según tu clave SSH
}

# output "my_ec2_instance_info" {
#   value = {
#     instance_id         = module.my_ec2_instance.ec2_instance_id
#     private_ip_address  = module.my_ec2_instance.ec2_instance_private_ip
#     public_ip_address   = module.my_ec2_instance.ec2_instance_public_ip
#     # Agrega cualquier otra salida que necesites para tu instancia EC2
#   }
# }
