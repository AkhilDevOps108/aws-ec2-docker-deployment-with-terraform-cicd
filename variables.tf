variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "github_username" {
  description = "GitHub username for Docker login"
  type        = string
}

variable "github_token" {
  description = "GitHub token for Docker login"
  type        = string
  sensitive   = true
}

variable "image_name" {
  description = "Docker image name to deploy on EC2"
  type        = string
}
