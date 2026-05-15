#It provides actual values for the variables defined earlier in your variables.tf
vpcs = {
  main = { #key is "main", value is an object with a "cidr" attribute.
    cidr = "10.0.0.0/16"
  }
}

subnets = {
  public1 = {
    cidr              = "10.0.1.0/24"
    availability_zone = "ap-south-1a"
  }

  public2 = {
    cidr              = "10.0.2.0/24"
    availability_zone = "ap-south-1b"
  }
}