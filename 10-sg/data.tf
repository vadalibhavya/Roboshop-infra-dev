data "aws_ssm_parameter" "vpc_id"  {
  name = "/${var.project}/vpc/id"
}