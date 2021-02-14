resource "aws_directory_service_log_subscription" "example" {
  directory_id   = aws_directory_service_directory.ad.id
  log_group_name = aws_cloudwatch_log_group.example.name
}
