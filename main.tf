terraform {
  backend "s3" {
    bucket                  = "patrick-s3state"
    key                     = "terraform.state.tf"
    region                  = "us-east-1"
    shared_credentials_file = "~/.aws/credentials"
  }
}

provider "aws" {
  region = "us-east-1"
}