# About this repo
This repo hosts the Terraform code responsible for provisioning cloud resources.

It leverages the `aws-soaman` module to provision SOA-related resources, such as VPCs, subnets, load balancers, ECS services, RDS instances, SQS queues, etc.

# CI/CD
The current CI/CD (via CircleCI), which invokes the command `make clean build`, will automatically create the following workspaces in Terraform Cloud:
- `infrastructure-manager-beta` (when building the `develop` branch)
- `infrastructure-manager-prod` (when building the `master` branch)

Given the `backend.tf` file, the execution of the Terraform plan can be performed remotely (in Terraform Cloud) or locally (i.e. your machine or CircleCI), according to your setting in TFC, but the state file will always reside in Terraform Cloud. If you want the state file to stay local, delete the `backend.tf` file.
