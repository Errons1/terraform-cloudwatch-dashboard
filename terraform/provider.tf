terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.39.0"
    }
  }
  backend "s3" {
    bucket = "snle"
    key    = "snle-terraform.state"
    region = "eu-west-1"
  }
}
