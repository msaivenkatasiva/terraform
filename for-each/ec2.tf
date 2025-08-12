resource "aws_instance" "terraform" {
    for_each = var.instance_names
    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-092f7e85fc025c3c0"]
    instance_type = each.value

    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }
    )
}