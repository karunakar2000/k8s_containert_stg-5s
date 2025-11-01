variable "cidr_block" {
    default = "172.18.0.0/16"
}

variable "project_name" {
    default = "terraform-project"
}

variable "envi" {
    default = "dev"
}

variable "vpc_tag" {
    default = {
        Env = "dev_env"
        Super = "Mahesh"
    }
}

variable "public_subnet_cidrs" {
    default = ["172.18.1.0/24", "172.18.2.0/24"]
}

variable "private_subnet_cidrs" {
    type = list
    default = ["172.18.5.0/24", "172.18.6.0/24"]
}

variable "database_subnet_cidrs" {
    type = list
    default = ["172.18.10.0/24", "172.18.11.0/24"]
}
