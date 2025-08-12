terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.8.0"
    }
  }
  backend "s3" {
    bucket         = "msvs-remote-state"
    key            = "msvs-for-each-key"
    region         = "us-east-1"
    dynamodb_table = "msvs-dynamo"
  }
}

provider "aws" {
    region = "us-east-1"
  # Configuration options
}

    