terraform {
  # 1. Required Terraform binary version
  required_version = ">= 1.5.0"

  # 2. Required Provider plugins
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Allows minor updates (5.1, 5.2) but not major (6.0)
    }

    random = {
      source  = "hashicorp/random"
      version = "3.5.1" # Pins to an exact version
    }
  }
}

# 3. Provider Configuration
provider "aws" {
  region = "ap-south-1"
}
