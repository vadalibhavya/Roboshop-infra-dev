
resource "aws_instance" "bastion" {
  ami_id           = local.ami_id
  instance_type    = var.instance_type
}