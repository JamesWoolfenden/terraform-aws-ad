output "ad" {
  value     = aws_directory_service_directory.ad
  sensitive = true
}
output "logs" {
  value = aws_cloudwatch_log_group.examplea
}
