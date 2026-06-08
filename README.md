# Terraform AWS Infrastructure CI

## Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform and AWS, with automated validation through GitHub Actions.

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

# To Do
- Create and configure the secret variables for connecting to AWS.
- Create Amazon S3 Bucket to store the tfstates and Enable versioning.(Run commands: 'aws s3 mb s3://yusdel-terraform-state-2026' and 'aws s3api put-bucket-versioning --bucket yusdel-terraform-state-2026 --versioning-configuration Status=Enabled'
- Asign permisions to the user we use for connection.

## Author

Yusdel Juan Concepcion
Infrastructure & DevOps Engineer
