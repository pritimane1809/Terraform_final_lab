#Locals are temporary named values used only inside the Terraform project.

locals {
  common_tags = { #Tags are key-value pairs that help you organize and manage your AWS resources.
    managedBy     = "Priti"
    deploymentMode = "terraform"
    environment   = var.environment
  }

  name_prefix = "${var.prefix}-app-${var.environment}"

  vpc_names = {
    for key, value in var.vpcs :
    key => "vpc-${var.prefix}-${var.environment}-${format("%03d", index(keys(var.vpcs), key) + 1)}"
  }

  subnet_names = {
    for key, value in var.subnets :
    key => "subnet-${var.prefix}-${var.environment}-${format("%03d", index(keys(var.subnets), key) + 1)}"
  }

  sg_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  upper_env = upper(var.environment) #Converts the environment variable to uppercase, which can be useful for consistent naming conventions.
  joined_name = join("-", [var.prefix, var.environment, "infra"]) #Joins the prefix, environment, and "infra" strings with hyphens.
  bucket_suffix = substr(md5(var.environment), 0, 6) #This helps generate unique bucket names automatically.
}


#Function	Purpose
#format()	Generate formatted numbering
#upper()	Convert environment name to uppercase
#join()	Join strings together
#substr()	Extract bucket suffix
#md5()	Create unique hash
#index()	Find index in list