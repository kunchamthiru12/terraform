terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }

backend "s3"{
  bucket = "daws-76sremotebucket"
  key = "for each"
  region = "us-east-1"
  dynamodb_table = "daws76s-locking"
}
}

provider "aws" {
  region = "us-east-1"
}