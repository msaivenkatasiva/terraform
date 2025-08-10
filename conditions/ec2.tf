resource "aws_instance" "conditions" {
    ami = var.ami_id
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
}