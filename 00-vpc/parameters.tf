
resource "aws_ssm_parameter" "vpc_id" {
  name        = "/${var.project}/vpc/id"
  type        = "String"
  value       = module.vpc.vpc_id
  description = "VPC ID"
  }

resource "aws_ssm_parameter" "public_subnet_ids" {
  name        = "/${var.project}/public_subnet_ids"
  type        = "String"
  value       = join(",", module.vpc.public_subnet_ids)
  description = "Public Subnet IDs"
  }