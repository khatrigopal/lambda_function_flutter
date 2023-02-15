provider "aws" {
  region = "us-east-1"
}

module "lambda_function_1" {
  source = "./modules/lambda_function"

  function_name = "lambda_function_1"
  role_arn = "arn:aws:iam::123456789012:role/lambda-role"
  handler = "lambda_function_1.handler"
  runtime = "python3.8"
  memory_size = 256
  timeout = 10

  filename = "lambda_functions/lambda_function_1.zip"
}
