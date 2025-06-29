resource "aws_ssm_parameter" "frontend_sg_id" {
  name        = "/${var.project}/frontend_sg_id"
  description = "Security group id for frontend"
  type        = "String"
  value       = module.frontend.sg_id
}