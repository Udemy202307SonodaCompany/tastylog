# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    encrypt = true
    # profile = "AWSInfrastructureAccess-SandboxDev"
    # profile = "AWSInfrastructureAccess-SandboxProd"
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  region = "ap-northeast-1"
  # profile = "AWSInfrastructureAccess-SandboxDev"
  # profile = "AWSInfrastructureAccess-SandboxProd"
}

provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
  # profile = "AWSInfrastructureAccess-SandboxDev"
  # profile = "AWSInfrastructureAccess-SandboxProd"
}
