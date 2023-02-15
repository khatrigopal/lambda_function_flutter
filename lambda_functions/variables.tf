variable "function_name" {
  description = "The name of the AWS Lambda function."
  default = ""
}



variable "handler" {
  description = "The name of the Python function that AWS Lambda calls to start execution."
  default = ""
}

variable "runtime" {
  description = "The runtime environment for the AWS Lambda function."
  default = "python3.8"
}

variable "memory_size" {
  description = "The amount of memory that AWS Lambda allocates to the function."
  default = 128
}

variable "timeout" {
  description = "The amount of time that AWS Lambda allows a function to run before stopping it."
  default = 3
}

variable "filename" {
  description = "The filename of the Python file for the AWS Lambda function."
  default = ""
}
