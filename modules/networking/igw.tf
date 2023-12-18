# Crear un Internet Gateway
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "mi-igw"
  }
}

#Adjuntar el Internet Gateway a la VPC
#resource "aws_internet_gateway_attachment" "mian" {
#  internet_gateway_id = aws_internet_gateway.main.id
#  vpc_id              = aws_vpc.main.id
#}
