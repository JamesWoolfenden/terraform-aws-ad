module "ad" {
  source      = "../../"
  ad          = var.ad
  common_tags = var.common_tags
  password    = var.password
}
