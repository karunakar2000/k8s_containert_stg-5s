output "dev_public_ip" {
  value = module.dev_instance.public_ip
}

output "stage_public_ip" {
  value = module.stage_instance.public_ip
}

output "prod_public_ip" {
  value = module.prod_instance.public_ip
}
