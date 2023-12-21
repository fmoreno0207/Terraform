module "ec2_instance" {
  source        = "../../modules/instances"
  ami_id        = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  key_name      = "key_name"  # Reemplaza con el nombre de tu clave SSH
  instance_name = "DEV-EC2"
  region        = "us-east-1"  # Reemplaza con la región deseada
  subnet_id     = "subnet-0fee51412ac70d7d0"
#  security_group_id = 
#  subnet_id     = "module.networking.subnet_dev.id" #Asi no funka
#  count         = 1  # Número de instancias EC2 a crear
}