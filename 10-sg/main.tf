data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = ["${var.project}-dev"]
  }
}

module "sg" {
  source = "git::https://github.com/vadalibhavya/terraform-aws-sg.git"
  project_name = var.project
  sg_description = var.sg_description
  sg_name = var.sg_name
  vpc_id = data.aws_vpc.main.id
}
