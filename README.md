# Terraform AWS Infrastructure CI

![Terraform](https://img.shields.io/badge/Terraform-1.x-purple?logo=terraform)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws)
![License](https://img.shields.io/badge/License-MIT-blue)

## 📋 Overview
Infrastructure as Code (IaC) project to provision and manage AWS resources using Terraform.
Designed for scalability, security, and repeatability across environments.

## 🏗️ Architecture
- **VPC** — Custom Virtual Private Cloud with public/private subnets
- **EC2** — Auto Scaling Groups with Launch Templates
- **S3** — Versioned storage buckets with lifecycle policies
- **IAM** — Roles and policies following least privilege principle
- **RDS** — Managed database with automated backups
- **Route53** — DNS management

## 🛠️ Technologies
- Terraform >= 1.0
- AWS Provider
- AWS CLI

## 🚀 Usage
```bash
# Clone the repository
git clone https://github.com/juanyusdel-coder/
cd 

# Initialize Terraform
terraform init

# Preview changes
terraform plan

# Apply infrastructure
terraform apply
```

## 📁 Project Structure
.
├── main.tf          # Main resources
├── variables.tf     # Input variables
├── outputs.tf       # Output values
├── provider.tf      # Provider configuration
└── README.md

## Technologies

- Terraform
- AWS
- GitHub Actions
- Git
- VPC
- Security Groups
- S3 Backend
- Remote State Management

## CI Pipeline

The pipeline automatically:

- Checks Terraform formatting
- Initializes Terraform
- Validates Terraform configuration

## Project Structure

terraform/
docs/
.github/workflows/

# Prerequisites
- Create and configure the secret variables for connecting to AWS.
- Create Amazon S3 Bucket to store the tfstates and Enable versioning.(Run commands: 'aws s3 mb s3://yusdel-terraform-state-2026' and 'aws s3api put-bucket-versioning --bucket yusdel-terraform-state-2026 --versioning-configuration Status=Enabled'
- Asign permisions to the user we use for connection.

## 👤 Author
**Yusdel Concepcion**
- LinkedIn: [linkedin.com/in/yusdelconcepcion](https://linkedin.com/in/yusdelconcepcion)
- GitHub: [github.com/juanyusdel-coder](https://github.com/juanyusdel-coder)
