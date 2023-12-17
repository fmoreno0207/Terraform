output "instance_id" {
  description = "ID de la instancia EC2 creada"
  value       = aws_instance.example.id
}

output "public_ip" {
  description = "Dirección IP pública de la instancia EC2 creada"
  value       = aws_instance.example.public_ip
}