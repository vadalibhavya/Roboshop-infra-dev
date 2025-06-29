
resource "aws_ssm_parameter" "vpc_id" {
  name        = "/${var.project}/vpc/id"
  type        = "String"
  value       = module.vpc.vpc_id
  description = "VPC ID"
  tags        = var.tags
}
