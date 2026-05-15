variable "subnet_name" {
    type = string
    description = "The name of the subnet"
}

variable "vpc_id" {
    type = string
    description = "The ID of the VPC"
}

variable "cidr" {
    type = string
    description = "The CIDR block for the subnet"
}

variable "availability_zone" {
    type = string
    description = "The availability zone for the subnet"
}

variable "tags" {
    type = map(string)
    description = "Tags to apply to the subnet"
}