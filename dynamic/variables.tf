variable "inbound_rules" {
    type = list
    default = [
        {
            port = 22,
            allowing_cidr = ["0.0.0.0/0"]
            protocol = "tcp"
        },
        {
            port = 80,
            allowing_cidr = ["0.0.0.0/0"],
            protocol = "tcp"
        },
        {
            port = 8080,
            allowing_cidr = ["0.0.0.0/0"]
            protocol = "tcp"
        },
        {
            port = 3306,
            allowing_cidr = ["0.0.0.0/0"]
            protocol = "tcp"
        }
    ]
}