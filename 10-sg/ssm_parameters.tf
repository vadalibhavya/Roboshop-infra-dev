resource "aws_ssm_parameter" "frontend_sg_id" {
  name        = "/${var.project}/frontend_sg_id"
  description = "Security group id for frontend"
  type        = "String"
  value       = module.frontend.sg_id
}

resource "aws_ssm_parameter" "bastion_sg_id" {
  name        = "/${var.project}/bastion_sg_id"
  description = "Security group id for bastion"
  type        = "String"
  value       = module.bastion.sg_id
}