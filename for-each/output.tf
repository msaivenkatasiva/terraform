output "aws_instances_info" {
    value = aws_instance.terraform
}

output "vpc_id" {
    value = data.aws_vpc.default.id
}