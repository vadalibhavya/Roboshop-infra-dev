data "aws_ami" "ami_id" {
  most_recent      = true
  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }
}

data "aws_ssm_parameter" "bastion_sg_id"  {
  name = "/${var.project}/bastion_sg_id"
}

data "aws_subnets" "public" {
  filter {
    name   = "tag:Name"
    values = ["${var.project}-dev-public-*"]
  }
}