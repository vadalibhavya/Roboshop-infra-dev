
resource "aws_instance" "bastion" {
  ami                    = data.aws_ami.ami_id.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [data.aws_ssm_parameter.bastion_sg_id.value]
  subnet_id              = data.aws_subnets.public.ids[0]
  
  tags = {
    Name = "${var.project}-bastion"
  }
}