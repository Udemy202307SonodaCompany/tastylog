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
    bucket  = "terraform-states-files-save"
    key     = "udemy_4/tastylog-dev.tfstate"
    region  = "ap-northeast-1"
    profile = "AWSAdministratorAccess-481657431265"
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  profile = "AWSAdministratorAccess-481657431265"
  region  = "ap-northeast-1"
}

provider "aws" {
  alias   = "virginia"
  profile = "AWSAdministratorAccess-481657431265"
  region  = "us-east-1"
}
