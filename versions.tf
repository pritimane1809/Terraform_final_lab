terraform {
    # Specifies the required Terraform CLI version
  required_version = ">= 1.5.0" #Use Terraform version 1.5.0 or higher

  required_providers {
    # Specifies provider-specific versions
    aws = {
      source  = "hashicorp/aws" #where to download the provider from
      version = "~> 5.0" #"pessimistic constraint" 
    }
  }
}


#which Terraform CLI version is required
#which providers are needed