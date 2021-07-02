output "lambda_function_name" {
  value = aws_lambda_function.test_lambda.function_name
}

output "lambda_function_role" {
  value = aws_lambda_function.test_lambda.role
}

output "lambda_function_arn" {
  value = aws_lambda_function.test_lambda.arn
}

output "lambda_function_runtime" {
  value = aws_lambda_function.test_lambda.runtime
}

output "lambda_function_layers" {
  value = aws_lambda_function.test_lambda.layers
}

output "lambda_function_timeout" {
  value = aws_lambda_function.test_lambda.timeout
}

output "lambda_function_version" {
  value = aws_lambda_function.test_lambda.version
}


