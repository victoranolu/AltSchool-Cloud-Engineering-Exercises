output "instance_ip" {
  value       = aws_instance.Insta.public_ip
  sensitive   = false
  description = "showing the public IP"
}

output "instance_ip01" {
  value       = aws_instance.Insta01.public_ip
  sensitive   = false
  description = "showing the public IP"
}

output "instance_ip02" {
  value       = aws_instance.Insta02.public_ip
  sensitive   = false
  description = "showing the public IP"
}