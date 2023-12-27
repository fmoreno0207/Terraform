module "networking" {
  source               = "../modules/networking" # Ruta al directorio que contiene los archivos del módulo
  region = "us-east-1"
  vpc_name = "VPC-Fer-DEV"
  subnet_public_name = "Subnet Publica"
  subnet_puvate_name = "Subnet Privada"
  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidr   = "10.0.1.0/24"
  private_subnet_cidr  = "10.0.2.0/24"
}

 output "ec2_instance_info" {
   value = {
     vpc_id            = module.networking.vpc_id
     public_subnet_id  = module.networking.public_subnet_id
     private_subnet_id = module.networking.private_subnet_id
   }
 }
