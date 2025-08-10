resource "aws_instance" "terraform" {
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_type

    tags = var.tags

}

resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.sg_description

    ingress {
        from_port = var.from_port
        to_port = var.to_port
        protocol = var.protocol
        cidr_blocks = var.cidr_blocks
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags={

        Name = "allow_ssh"
        created_by = "M_S_V_SIVA"
    }
}