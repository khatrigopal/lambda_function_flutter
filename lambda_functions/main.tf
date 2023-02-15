provider "aws" {
  region = "us-east-1"
}

module "lambda_function_1" {
  source = "../modules/lambda_function"
  role_arn = aws_iam_role.lambda_role.arn

  function_name = "lambda_function_1"
  
  handler = "lambda_function_1.handler"
  runtime = "python3.8"
  memory_size = 256
  timeout = 10

  filename = "lambda_functions/lambda_function_1.zip"
}
