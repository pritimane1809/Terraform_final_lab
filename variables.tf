variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "prefix" {  #Used for resource naming.
  type    = string
  default = "app"
}

variable "environment" { #Defines deployment environment.
  type    = string
  default = "dev"
}

variable "vpcs" { #Useful when creating multiple VPCs with different CIDR blocks.
  type = map(object({
    cidr = string
  }))
}

variable "subnets" { #create multiple subnets.
  type = map(object({
    cidr             = string
    availability_zone = string
  }))
}

variable "ec2_count" {
  type    = number
  default = 2
}

variable "s3_count" {
  type    = number
  default = 2
}

variable "sg_count" {
  type    = number
  default = 1
}


#A variable is like a container that stores values.