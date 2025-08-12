variable "instance_names" {
    type = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "common_tags" {
    type = map
    default = {
        environment = "dev"
        project = "expense"
        terraform = true
    }
}

variable "zone_id" {
    default = "Z06890531V7XSAXV1BRPS"
}

variable "domain_name" {
    default = "devopswithmsvs.uno"
}