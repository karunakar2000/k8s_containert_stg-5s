variable "vpc_cidr" {
    default = "172.18.0.0/16"
}

variable "project_name" {
    default = "terraform_proj"
}

variable "environment" {
    default = "DEV"
}

variable "vpc_tags" {
    default = {
        Env = "TEST-DEV"
        Super = "Mahesh"
    }
}