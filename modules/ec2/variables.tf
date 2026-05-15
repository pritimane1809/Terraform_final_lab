variable "instance_name" {
    type = string
    description = "The name of the EC2 instance"
}

variable "subnet_id" {
    type = string
    description = "The ID of the subnet"
}

variable "sg_id" {
    type = string
    description = "The ID of the security group"
}

variable "tags" {
    type = map(string)
    description = "Tags to apply to the EC2 instance"
}