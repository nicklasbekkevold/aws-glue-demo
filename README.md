# AWS Glue demo repository

Test repository to learn how to use AWS Glue

## Requirements

To run and deploy this project, the following is required:

- An AWS account
- Terraform v1.4.6 (or greater)

## Setup S3 backend

For the first time setup, run `terraform init`, then `terraform apply` with the S3 backend block in [main.tf](terraform/main.tf) commented-out (will use local backend) to provision the terraform resources: the state bucket and state locking table.

After the resources have been created successfully, uncomment the S3 backend block and run `terraform init` and `terraform apply` again (will use S3 backend).
