variable "sg_name" {
    type = string
    description = "The name of the security group"
}

variable "vpc_id" {
    type = string
    description = "The ID of the VPC"
}

variable "rules" {
    type = list(object({
        description = string
        from_port = number
        to_port = number
        protocol = string
        cidr_blocks = list(string)
    }))
    description = "The rules for the security group"
}

variable "tags" {
    type = map(string)
    description = "Tags to apply to the security group"
}