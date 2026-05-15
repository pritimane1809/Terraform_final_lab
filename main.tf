module "vpc" {
  source = "./modules/vpc"

  for_each = var.vpcs

  vpc_name = local.vpc_names[each.key]
  cidr     = each.value.cidr
  tags     = local.common_tags
}

module "subnet" {
  source = "./modules/subnet"

  for_each = var.subnets

  subnet_name       = local.subnet_names[each.key]
  vpc_id            = values(module.vpc)[0].vpc_id
  cidr              = each.value.cidr
  availability_zone = each.value.availability_zone
  tags              = local.common_tags
}

module "security_group" {
  source = "./modules/security-group"

  count = var.sg_count

  sg_name = "sg-${var.prefix}-${var.environment}-${format("%03d", count.index + 1)}"
  vpc_id  = values(module.vpc)[0].vpc_id
  rules   = local.sg_rules
  tags    = local.common_tags
}

module "ec2" {
  source = "./modules/ec2"

  count = var.ec2_count

  instance_name = "ec2-${var.prefix}-${var.environment}-${format("%03d", count.index + 1)}"
  subnet_id     = values(module.subnet)[0].subnet_id
  sg_id         = module.security_group[0].sg_id
  tags          = local.common_tags
}

module "s3" {
  source = "./modules/s3"

  count = var.s3_count

  bucket_name = "s3-${var.prefix}-${var.environment}-${count.index + 1}-${local.bucket_suffix}"
  tags        = local.common_tags
}