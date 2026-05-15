#Finds the latest Amazon Linux AMI automatically
#Creates an EC2 instance using that AMI


data "aws_ami" "amazon_linux" { #A data source is used to fetch existing information from AWS.
  most_recent = true #If multiple AMIs match, select the newest one.

  owners = ["amazon"] #This restricts search results to official AWS AMIs only

  filter { #Filters AMIs by name
    name   = "name"
    values = ["al2023-ami-*"]
  }
}

resource "aws_instance" "my_instance" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id] #Because Terraform expects a list.

  tags = merge(var.tags, { #Combines multiple maps into one.
    Name = var.instance_name
  })

  lifecycle {
    create_before_destroy = true
  }
}
#creates new instance first
#then destroys old instance

#Example
#{
 # Environment = "dev"
  #ManagedBy   = "Terraform"
  #Name        = "web-server"
#}