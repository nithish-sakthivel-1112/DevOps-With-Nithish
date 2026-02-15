#Create an multiple EC2 instances using for_each 
locals {
  ami_map = {
    amazon = data.aws_ami.amazon_linux.id
    ubuntu = data.aws_ami.ubuntu.id
  }
}


resource "aws_instance" "mutiple_instances" {
    for_each      = var.instances
    ami           = local.ami_map[each.value.os]
    instance_type = each.value.instance_type
}