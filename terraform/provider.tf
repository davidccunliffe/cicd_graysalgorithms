provider "aws" {
  region  = "us-east-1"
  profile = "2w-sandbox"
  version = "~> 2.42"
}

terraform {
  backend "s3" {
    bucket  = "dcunliffe-terraform-state"
    key     = "cicd-graysalgorithms"
    region  = "us-east-1"
    profile = "2w-sandbox"
  }
}