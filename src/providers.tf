terraform {
  required_version = "~> 1.12.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.87"
    }
  }
}

provider "aws" {
  # AWS credentials are automatically loaded from the environment variables AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY, or from the ~/.aws/credentials file.
  region = var.aws_region
}
