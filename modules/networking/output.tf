# outputs.tf
output "vpc_id" {
  description = "ID de la VPC creada"
  value       = aws_vpc.main.id
}

output "vpc_cidr_block" {
  description = "CIDR block de la VPC creada"
  value       = aws_vpc.main.cidr_block
}

output "subnet_a_id" {
  description = "ID de la Subred A creada"
  value       = aws_subnet.subnet_a.id
}

output "subnet_b_id" {
  description = "ID de la Subred B creada"
  value       = aws_subnet.subnet_b.id
}

output "internet_gateway_id" {
  description = "ID del Internet Gateway creado"
  value       = aws_internet_gateway.main.id
}

# output "route_table_id" {
#   description = "ID de tabla de ruteo"
#   value       = aws_route_table.main.id
# }
output "default_route_table_id" {
  description = "ID del Internet Gateway creado"
  value       = aws_default_route_table.main.id
}

##Este es el output de la SG diferente de la defaul
#output "security_group_id" {
#   description = "ID del grupo de seguridad allow_ssh"
#   value       = aws_security_group.main.id
# }

output "aws_default_security_group" {
  description = "ID del grupo de seguridad allow_ssh"
  value       = aws_default_security_group.main.id
}
output "vpc_dev_id" {
  description = "ID de la VPC DEV"
  value       = aws_vpc.dev.id
}

output "subnet_dev_id" {
  description = "ID de la Subred A creada"
  value       = aws_subnet.subnet_dev.id
}