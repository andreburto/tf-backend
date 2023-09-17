variable "application_name" {
  default     = "mothersect"
  description = "The name of the application for this configuration."
  type        = string
}

variable "aws_region" {
  default     = "us-east-1"
  description = "The AWS region to use."
  type        = string
}
