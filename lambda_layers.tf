resource "aws_lambda_layer_version" "lambda_layer" {
  #filename   = var.lambda_layer_file
  layer_name = var.lambda_layer_name
  s3_bucket = var.s3_bucket
 s3_key = var.key
  
  compatible_runtimes = [var.layer_runtime]
}
