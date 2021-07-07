# Adding Cloudwatch events as trigger to my lambda and giving the permissions
##################
resource "aws_cloudwatch_event_rule" "lambda_trigger_after_crawler_succeded" {
  name        = var.cwrulename
  description = "after crawler run successfully"
  event_pattern = jsonencode("${path.module}/cloudwatch_rule.json")
}

#resource "aws_cloudwatch_event_rule" "lambda_trigger_every_five_minutes" {
    #name = var.cwrulename
    #description = "Fires every five minutes"
    #schedule_expression = var.Schedule
#}

resource "aws_cloudwatch_event_target" "lambda_trigger_after_crawler_succeded" {
    rule = "${aws_cloudwatch_event_rule.lambda_trigger_after_crawler_succeded}"
    target_id = var.target_id
    arn = aws_lambda_function.test_lambda.arn
}

resource "aws_lambda_permission" "allow_cloudwatch_to_call_test_lambda" {
    statement_id = var.statement_id2
    action = var.action2
    function_name = aws_lambda_function.test_lambda.function_name
    principal = var.principle2
    source_arn = "${aws_cloudwatch_event_rule.lambda_trigger_after_crawler_succeded.arn}"
}
