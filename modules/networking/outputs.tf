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