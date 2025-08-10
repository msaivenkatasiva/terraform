resource "aws_instance" "terraform" {
    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = [data.aws_vpc.default.id]
    instance_type = "t3.micro"

    tags = {
        Name = "data-source-practice"
    }
}