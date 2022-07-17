variable "aws_region" {
  type        = string
  default     = "us-west-2"
  description = "Name of the AWS region"
}

variable "env_name" {
  type        = string
  default     = "dev"
  description = "Name of the environment"
}