module "vpc" {
    source = "../terraform_vpc"
    vpc_cidr = "10.10.0.0/16"
    project_name = "terraform_proj"
    environment = "dev"

}