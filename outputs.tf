output "instance_id" {
    description = "ID of the ec2 instance"
    value = aws_instance.app_server.id
}

output "instance_public_ip" {
    description = "public ip of the ec2 instance"
    value = aws_instance.app_server.public_ip
}