module "vpc" {
    source = "../terraform_vpc"
    vpc_cidr = var.cidr_block
    project_name = var.proj_name
    environment = var.envi
    vpc_tags = var.vpc_tag
    igw_tags = var.igw_tag

}