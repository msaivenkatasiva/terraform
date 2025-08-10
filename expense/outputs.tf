output "instance_info" {
    value = aws_instance.expense
}

output "aws_sg_id" {
    value = aws_security_group.allow_ssh.id
}