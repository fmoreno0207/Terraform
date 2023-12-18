#Esta configuracion me permite crear una RT asociada a la vpc y agregar rutas
# resource "aws_route_table" "main" {
#   vpc_id = aws_vpc.main.id

#   # since this is exactly the route AWS will create, the route will be adopted
#   route {
#     cidr_block = "10.0.0.0/16"
#     gateway_id = "local"
#   }
  
#   # Ruta por defecto a internet igw  
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.main.id
#   }
# }

# Tabla de ruteo por defecto + agregado de ruta por defecto
resource "aws_default_route_table" "main" {
  default_route_table_id = aws_vpc.main.default_route_table_id

  # Agrega rutas según sea necesario
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id  # Reemplaza con el ID de tu Internet Gateway
  }
}