terraform {
  backend "s3" {
    bucket         = "terraform-state-akhil" # Your bucket name
    key            = "ec2-docker/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}
