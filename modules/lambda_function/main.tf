data "archive_file" "function" {
  type = "zip"
  source_file = var.filename
}

resource "aws_lambda_function" "this" {
  function_name = var.function_name
  role = var.role_arn
  handler = var.handler
  runtime = var.runtime
  memory_size = var.memory_size
  timeout = var.timeout

  filename = data.archive_file.function.output_path
  source_code_hash = data.archive_file.function.output_base64sha256
}
