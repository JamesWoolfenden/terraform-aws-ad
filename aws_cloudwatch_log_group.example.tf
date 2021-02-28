resource "aws_cloudwatch_log_group" "examplea" {
  name              = "/aws/directoryservice/${aws_directory_service_directory.ad.id}"
  retention_in_days = 14
  kms_key_id        = var.kms_key_id
  tags              = var.common_tags
}
