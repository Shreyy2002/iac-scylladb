output "scylladb_api_instance_id" {
  value       = aws_instance.scylladb_api.id
  description = "ID of the scylladb-api EC2 instance"
}

output "scylladb_api_private_ip" {
  value       = aws_instance.scylladb_api.private_ip
  description = "Private IP of the scylladb-api EC2 instance"
}
