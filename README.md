# Terraform AWS Infrastructure Assignment

This repository contains Terraform code for provisioning infrastructure on AWS. The resources provisioned include a **VPC**, **public and private subnets**, **EC2 instance** with Nginx, and a security group that allows HTTP traffic.

## Overview

The following AWS resources are provisioned:

- A **VPC** with CIDR block `10.0.0.0/16`
- Three **public subnets** and three **private subnets** spread across different availability zones
- An **EC2 instance** in one of the public subnets with Nginx installed on port 80
- A **security group** to allow HTTP (port 80) access to the EC2 instance

## Project Structure

- `provider.tf`: AWS provider configuration
- `vpc.tf`: Defines the VPC and its CIDR block
- `subnets.tf`: Defines the public and private subnets
- `route.tf`: Configures internet gateway and route tables
- `security_group.tf`: Defines the security group for HTTP access
- `ec2.tf`: Defines the EC2 instance configuration

## Getting Started

To get started with this project, follow these steps:

### Prerequisites

- Terraform 0.14 or higher
- AWS account with IAM permissions to create resources (EC2, VPC, subnets, etc.)
- AWS credentials configured (via `aws configure`)

### Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/anuragdevop/terraform-devops-assignment.git
   cd terraform-devops-assignment
   ```

2. Initialize Terraform:

   ```bash
   terraform init
   ```

3. Review the changes Terraform will make:

   ```bash
   terraform plan
   ```

4. Apply the changes to provision the resources:

   ```bash
   terraform apply
   ```

5. After the infrastructure is provisioned, Terraform will output the **public IP address** of the EC2 instance. You can access the Nginx server by visiting this IP in your browser.

## Notes

- The EC2 instance is launched in one of the public subnets, and Nginx is installed and running on port 80.
- The security group allows inbound HTTP traffic (port 80).
- The infrastructure is designed for high availability with subnets spread across multiple availability zones.


