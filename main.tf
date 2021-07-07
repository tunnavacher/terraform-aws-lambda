# Lambda function_name
resource "aws_lambda_function" "test_lambda" {
  function_name = var.function_name1
  description   = "My awesome lambda function"
  handler       = var.lambda_handler1
  runtime       = var.runtime1
  memory-size      = 256
  role = var.lambda_execution_role
 # filename = var.filename
 s3_bucket = var.s3_bucket1
s3_key = var.s3_key1
layers = [aws_lambda_layer_version.lambda_layer.arn]
}

resource "aws_lambda_function" "crawlerstart_lambda" {
  function_name = var.function_name2
  description   = "My awesome lambda function"
  handler       = var.lambda_handler2
  runtime       = var.runtime2
  role = var.lambda_execution_role
  filename = "lambda_function1.zip"
  memory-size      = 256
}
