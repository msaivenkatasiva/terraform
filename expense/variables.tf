# ec2 variables
variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_names" {
    type = list
    default = ["db", "backend", "frontend"]
}

# sg variables
variable "sg_name" {
    type = string
    default = "allow_ssh"
}

variable "sg_description" {
    type = string
    default = "allowing port no 22"
}

variable "from_port" {
    default = 22
}

variable "to_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "common_tags" {
    default = {
        Environment = "dev"
        Project = "Expense"
        terraform = "true"
    }
}

#r53 variavles

variable "zone_id" {
    default = "Z06890531V7XSAXV1BRPS"
}

variable "domain_name" {
    default = "devopswithmsvs.uno"
}
