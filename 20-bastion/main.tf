
resource "aws_instance" "bastion" {
  ami_id           = local.ami_id
  instance_type    = var.instance_type
  vpc_security_group_ids = [data.aws_ssm_parameter.bastion_sg_id.id]
}