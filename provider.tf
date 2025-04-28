provider "aws" {

}

terraform {
  backend "s3" {
    bucket = "b59terraformstate2"
    key    = "jenkins/state.tf"
    region = "us-east-1"
  }

}