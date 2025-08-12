resource "aws_instance" "db" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-092f7e85fc025c3c0"]

    tags = {
        Name = "db"
    }
}