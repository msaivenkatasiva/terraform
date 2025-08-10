variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "instance_name" {
    default = "db"
}