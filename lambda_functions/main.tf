provider "aws" {
  region = "us-east-1"
}



data "archive_file" "lambda_function_1" {
  type        = "zip"
  source_dir  = "lambda_functions_1"
  output_path = "${path.module}/lambda_function_1.zip"
}

module "lambda_function_1" {
  source         = "../modules/lambda_function"
  filename       = data.archive_file.lambda_function_1.output_path
  function_name  = "lambda_function_1"
  role_arn       = "arn:aws:iam::123456789012:role/lambda-role"
  handler        = "lambda_function_1.handler"
  runtime        = "python3.8"
  memory_size    = 256
  timeout        = 10
}
