resource "aws_cloudwatch_log_group" "example" {
  name              = "/aws/directoryservice/${aws_directory_service_directory.ad.id}"
  retention_in_days = 14
  tags              = var.common_tags
}
