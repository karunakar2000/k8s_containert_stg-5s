variable "cidr_block" {
    default = "172.18.0.0/16"
}

variable "proj_name" {
    default = "terraform_proj"
}

variable "envi" {
    default = "DEV"
}

variable "vpc_tag" {
    default = {
        Env = "TEST-DEV"
        Super = "Mahesh"
    }
}