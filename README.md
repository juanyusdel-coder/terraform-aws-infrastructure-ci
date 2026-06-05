# Terraform AWS Infrastructure CI

## Overview

This project demonstrates Infrastructure as Code (IaC) principles using Terraform and AWS, combined with GitHub Actions for Continuous Integration.

The repository provisions AWS resources and automatically validates Terraform configurations on every push and pull request.

## Technologies

- Terraform
- AWS
- GitHub Actions
- Git
- Linux

## Features

- Infrastructure as Code
- Automated Terraform validation
- CI pipeline
- Modular structure
- Documentation

## Project Structure

terraform/
.github/workflows/
docs/

## CI Pipeline

The GitHub Actions workflow performs:

1. Terraform fmt
2. Terraform init
3. Terraform validate

## Future Improvements

- VPC
- Security Groups
- Remote State
- S3 Backend
- DynamoDB State Locking

## Author

Yusdel Concepcion
Infrastructure & DevOps Engineer