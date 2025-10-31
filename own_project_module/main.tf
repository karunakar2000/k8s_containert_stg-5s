module "dev_instance" {
  source         = "../terraform_module"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  sg_ids         = var.sg_ids
  tags           = merge(var.tags, { Environment = "dev" })
}

module "stage_instance" {
  source         = "../terraform_module"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  sg_ids         = var.sg_ids
  tags           = merge(var.tags, { Environment = "stage" })
}

# module "prod_instance" {
#   source         = "../terraform_module"
#   ami_id         = var.ami_id
#   instance_type  = var.instance_type
#   sg_ids         = var.sg_ids
#   tags           = merge(var.tags, { Environment = "prod" })
# }

