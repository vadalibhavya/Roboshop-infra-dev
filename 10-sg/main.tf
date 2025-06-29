module "frontend" {
  source = "git::https://github.com/vadalibhavya/terraform-aws-sg.git?ref=main"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = "Frontend-Roboshop-dev"
  sg_description = "Frontend-Roboshop-dev"
  project_name = var.project
}