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
# IGW
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    var.igw_tags,
    var.vpc_tags,
    {
      Name = local.common_name_suffix
    }
  )
}

resource "aws_subnet" "public" {
  count = length(var.public_subnet_cidrs)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidrs[count.index] 
  availability_zone = local.az_names[count.index]
  map_public_ip_on_launch = true

  tags = merge(
    var.public_subnet_tags,
    var.vpc_tags,
    {
      Name = "${local.common_name_suffix}-public-sub-${local.az_names[count.index]}" # project_name-dev-public-us-east-1a
    }
  )
}

resource "aws_subnet" "private" {
  count = length(var.private_subnet_cidrs)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidrs[count.index] 
  availability_zone = local.az_names[count.index]

  tags = merge(
    var.private_subnet_tags,
    var.vpc_tags,
    {
      Name = "${local.common_name_suffix}-private-sub-${local.az_names[count.index]}" # project_name-dev-private-us-east-1a
    }
  )
}