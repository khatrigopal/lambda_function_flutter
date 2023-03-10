variable "filename" {
  description = "The filename of the Python file for the AWS Lambda function."
}

variable "function_name" {
  description = "The name of the AWS Lambda function."
}

variable "role_arn" {
  description = "The ARN of the IAM role for the AWS Lambda function."
}

variable "handler" {
  description = "The name of the Python function that AWS Lambda calls to start execution."
}

variable "runtime" {
  description = "The runtime environment for the AWS Lambda function."
}

variable "memory_size" {
  description = "The amount of memory that AWS Lambda allocates to the function."
  default     = 128
}

variable "timeout" {
  description = "The amount of time that AWS Lambda allows a function to run before stopping it."
  default     = 3
}
