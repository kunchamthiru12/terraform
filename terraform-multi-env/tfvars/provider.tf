terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "daws-76bucket"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "daws76s-locked"
  }
}

provider "aws" {
  region = "us-east-1"
}