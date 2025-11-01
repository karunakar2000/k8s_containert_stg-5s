module "vpc" {
    source = "../terraform_vpc"
    # VPC
    vpc_cidr = var.cidr_block
    project_name = var.proj_name
    environment = var.envi
    vpc_tags = var.vpc_tag

    # Public Subnets 
    public_subnet_cidrs = var.public_subnet_cidrs

    # Private Subnets 
    private_subnet_cidrs = var.private_subnet_cidrs
}

# data "aws_availability_zones" "available" {
#   state = "available"
# }