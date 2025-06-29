module "frontend" {
  source = "git::https://github.com/vadalibhavya/terraform-aws-sg.git?ref=main"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = "Frontend-Roboshop-dev"
  sg_description = "Frontend-Roboshop-dev"
  project_name = var.project
}


module "bastion" {
  source = "git::https://github.com/vadalibhavya/terraform-aws-sg.git?ref=main"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = var.bastion_sg
  sg_description = var.bastion_sg_description
  project_name = var.project
}

resource "aws_security_group_rule" "allow_bastion" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = module.bastion.sg_id
}