module "ec2_instance" {
  source        = "../ec2-module"  # Ruta al directorio del módulo
  ec2_count     = 2  # Número de instancias EC2 a crear

}