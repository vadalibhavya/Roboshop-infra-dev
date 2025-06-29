module "security_group" {
  source = "git::https://github.com/vadalibhavya/terraform-aws-sg.git"
  project_name = var.project
}