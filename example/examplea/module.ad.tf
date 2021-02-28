module "ad" {
  source      = "../../"
  ad          = var.ad
  common_tags = var.common_tags
  password    = var.password
  kms_key_id  = aws_kms_key.ad.id
}
