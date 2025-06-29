locals {
  ami_id        = "ami-09c813fb71547fc4f"
  bastion_sg_id = data.aws_ssm_parameter.bastion_sg_id.id
}