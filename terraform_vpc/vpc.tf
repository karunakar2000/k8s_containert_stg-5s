resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = merge(
    local.common_tags,
    var.vpc_tags,
    {
        Name = local.common_name_suffix
    }
  )
}