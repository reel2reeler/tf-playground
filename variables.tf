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

# EC2 variables
variable "sg_ssh_ingress_cidrs" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

# Network variables

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
}