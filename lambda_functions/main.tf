provider "aws" {
  region = "us-east-1"
}

module "lambda_function_1" {
  filename = var.filename
  source = "../modules/lambda_function"
  function_name = "lambda_function_1"
  handler = "lambda_function_1.handler"
  runtime = "python3.8"
  memory_size = 256
  timeout = 10
 }
