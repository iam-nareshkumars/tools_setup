provider "aws" {

}

terraform {
  backend "s3" {
    bucket = "b59terraformstate2"
    key    = "expense-tools/terraform.tfstate"
    region = "us-east-1"
  }

}