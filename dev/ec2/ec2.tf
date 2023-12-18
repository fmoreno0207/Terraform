module "ec2_instance" {
  source        = "../../modules/instances"  # Ruta al directorio del módulo
  ami_id        = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  #key_name      = "id_rsa.pub"  # Reemplaza con el nombre de tu clave SSH
  instance_name = "your-ec2-instance-name"  # Reemplaza con el nombre deseado para la instancia
  region        = "us-east-1"  # Reemplaza con la región deseada
  subnet_id     = "subnet-0ee24cb07633d7bbb"
#  subnet_id     = "module.networking.subnet_dev.id"
#  count         = 1  # Número de instancias EC2 a crear
}