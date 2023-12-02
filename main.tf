terraform {
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
      
    }
  }
}
provider "aws" {
  region = "us-east-1"
  access_key = "ASIA4VLXRTMJ3DMB3BHF"
  secret_key = " kBUq665Ffj96sVm5NqcxknkULLoGzqjLg6RsRoKd"
}
module "tf-state" {
  source      = "./modules/tf-state"
  bucket_name = "state-backend-ci-cd"
}
