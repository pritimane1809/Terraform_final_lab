output "vpc_ids" {
  value = module.vpc
}

output "subnet_ids" {
  value = module.subnet
}

output "ec2_instances" {
  value = module.ec2
}

output "s3_buckets" {
  value = module.s3
}