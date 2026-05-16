# AWS Terraform Modular Infrastructure Project

## Project Overview

This project demonstrates how to build a modular and reusable AWS infrastructure using Terraform. The infrastructure is organized into separate modules for better maintainability, scalability, and readability.

The project provisions:

- VPC
- Subnets
- Security Groups
- EC2 Instances
- S3 Buckets

The implementation follows Terraform best practices including reusable modules, naming conventions, lifecycle rules, dynamic blocks, locals, tagging standards, and Terraform functions.

---

# Project Objectives

- Create reusable Terraform modules
- Implement modular infrastructure architecture
- Use `count` and `for_each`
- Configure dynamic security group rules
- Apply lifecycle management
- Use Terraform functions
- Implement standardized naming conventions
- Apply common tags across all resources
- Separate configuration into multiple Terraform files

---

# Features Implemented

## Modular Architecture

Separate modules were created for:

- VPC
- Subnet
- Security Group
- EC2
- S3

Each module contains:

- main.tf
- variables.tf
- outputs.tf

---

# Terraform Concepts Used

## 1. Count

Used in:

- EC2 Instances
- Security Groups
- S3 Buckets

This allows multiple resources to be created dynamically.

---

## 2. For Each

Used in:

- VPC
- Subnets

This enables iteration over maps and objects.

---

## 3. Dynamic Blocks

Dynamic ingress rules are implemented inside the Security Group module to create multiple inbound rules efficiently.

---

## 4. Locals

A dedicated `locals.tf` file is used for:

- Naming conventions
- Common tags
- Security group rule definitions
- Complex string formatting

---

## 5. Lifecycle Blocks

Lifecycle rules are implemented on multiple resources for better infrastructure protection and management.

Examples include:

- prevent_destroy
- create_before_destroy
- ignore_changes

---

## 6. Terraform Functions Used

The project uses multiple Terraform functions such as:

- format()
- upper()
- join()
- substr()
- md5()
- index()

These functions help with formatting, naming, string manipulation, and generating unique values.

---

# Naming Convention

All resources follow a standardized naming convention:

<resource>-<prefix>-<environment>-001

Examples:

- vpc-app-dev-001
- subnet-app-dev-001
- ec2-app-dev-001
- sg-app-dev-001

This naming structure improves consistency and resource identification.

---

# Tags Applied

All resources include common tags.

Tags used:

- managedBy
- deploymentMode
- environment

---

# Project Structure

The project is organized into:

- Root Terraform configuration files
- Reusable modules
- Separate module folders
- Environment variables file
- Outputs and locals

This structure improves scalability and readability.

---

# Files Included

## Root Level Files

- main.tf
- variables.tf
- outputs.tf
- versions.tf
- providers.tf
- locals.tf
- terraform.tfvars

---

## Module Files

Each module contains:

- main.tf
- variables.tf
- outputs.tf

Modules created:

- VPC Module
- Subnet Module
- Security Group Module
- EC2 Module
- S3 Module

---

# AWS Resources Created

The infrastructure deploys:

- One or more VPCs
- Multiple subnets
- Security groups with dynamic rules
- Multiple EC2 instances
- Multiple S3 buckets

---

# Security Features

- Controlled ingress rules
- Reusable security configurations
- Lifecycle protection
- Standardized tagging
- Infrastructure consistency

---

# Benefits of This Project

- Reusable infrastructure
- Modular design
- Easier maintenance
- Scalable architecture
- Production-style Terraform structure
- Reduced code duplication
- Better resource organization

---

# Deployment Workflow

Typical workflow includes:

1. Initialize Terraform = "terraform init"
2. Validate configuration = "terraform validate"
3. Review execution plan = "terraform plan"
4. Apply infrastructure = "terraform apply"
5. Verify resources in AWS Console
6. Destroy resources when no longer needed = "terraform destroy"

---

# Learning Outcomes

This project helps understand:

- Terraform module creation
- Infrastructure as Code principles
- AWS resource provisioning
- Terraform best practices
- Dynamic resource management
- Terraform meta-arguments
- Lifecycle management
- Infrastructure organization

---

# Conclusion

This project demonstrates a complete modular Terraform implementation for AWS infrastructure using industry-standard practices. It showcases reusable architecture, automation, naming standards, dynamic configurations, and scalable infrastructure deployment.

---

<img width="1802" height="1014" alt="11" src="https://github.com/user-attachments/assets/4a46f7d3-bebd-430e-9225-66c9232001e5" />


<img width="1222" height="1015" alt="10" src="https://github.com/user-attachments/assets/8c660c80-fe30-46e2-8994-5ad7d8696ffb" />


<img width="1290" height="1024" alt="09" src="https://github.com/user-attachments/assets/66c1baa6-e133-414a-9c3f-8ff5f7c6472f" />


<img width="1250" height="1006" alt="08" src="https://github.com/user-attachments/assets/5f627532-c3dc-42e6-a910-2255f5bf04fb" />


<img width="1324" height="1028" alt="07" src="https://github.com/user-attachments/assets/7a7f98b2-54dc-4157-a268-20dca1383964" />


<img width="1236" height="1026" alt="06" src="https://github.com/user-attachments/assets/748957da-0369-4eaf-99a4-bfec034fd88a" />


<img width="1036" height="1022" alt="05" src="https://github.com/user-attachments/assets/29076d6d-a899-4dac-a2d9-45c093cadbf7" />


<img width="1339" height="1022" alt="04" src="https://github.com/user-attachments/assets/e1bdad4b-450a-4499-bdd7-3999c2a9cba5" />


<img width="1298" height="1031" alt="03" src="https://github.com/user-attachments/assets/04a0e07a-d55e-438e-b933-266997338c12" />


<img width="1232" height="1029" alt="02" src="https://github.com/user-attachments/assets/2105dcee-3fa6-40df-b973-df10209c73d9" />


<img width="1793" height="1015" alt="01" src="https://github.com/user-attachments/assets/cd7986a2-aed2-443a-8740-784ab8acfeb1" />
