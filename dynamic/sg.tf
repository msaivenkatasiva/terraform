resource "aws_security_group" "allow_ports" {

    name = "allow_ports"
    description = "allowing ports are 22,80,8080,3306"

    #terraform block
    dynamic "ingress" {
        for_each = var.inbound_rules
        content{
            from_port = ingress.value["port"] #each.value[<each.key>] i.e, each value needs to be loaded here.
            to_port = ingress.value["port"]
            cidr_blocks = ingress.value["allowing_cidr"]
            protocol = ingress.value["protocol"]
        }

    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        name = "allow_ssh"
        created_by = "M_S_V_SIVA"
    }
}