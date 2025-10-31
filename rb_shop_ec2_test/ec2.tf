module "catalogue" {
    source = "../terraform_module"
    ami_id = var.ami_id
    instance_type = var.instance_type
    sg_ids = var.sg_ids
    tags = var.tags
}

output "pub_ip" {
    value = module.catalogue.public_ip
}

output "pvt_ip" {
    value = module.catalogue.private_ip
}

output "inst_id" {
    value = module.catalogue.instance_id
}