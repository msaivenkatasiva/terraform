variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "RHEL-9 INSTANCE AMI ID"
}

variable "instance_type" {
    type = string
    default = "t3.micro"

}

variable "tags" {
    default = {
        Project = "expense"
        Environment = "dev"
        Module = "db"
        Name = "terraform"
    }
}

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
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