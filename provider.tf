terraform {
  backend "s3" {
    bucket         = "terraform-state-akhil-20250810" # Your S3 bucket
    key            = "ec2-docker/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}
