# Declaración del módulo networking
module "networking" {
  source        = "../networking"
  subnet_a_cidr = "10.0.1.0/24"  # Ajusta el valor según tus necesidades
  subnet_b_cidr = "10.0.2.0/24"  # Ajusta el valor según tus necesidades
  region        = "us-west-2"    # Ajusta el valor según tus necesidades
  vpc_cidr      = "10.0.0.0/16"  # Ajusta el valor según tus necesidades
  vpc_name      = "my-vpc"       # Ajusta el valor según tus necesidades
  # Otros argumentos según sea necesario
}

# Recurso aws_instance
resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = module.networking.subnet_a_id
  tags = {
    Name = var.instance_name
  }
}