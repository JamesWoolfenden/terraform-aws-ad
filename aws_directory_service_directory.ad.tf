resource "aws_directory_service_directory" "ad" {
  name     = var.ad[name]
  password = var.password
  size     = var.ad["size"]
  type     = var.ad["type"]

  connect_settings {
    customer_dns_ips  = var.ad["customer_dns_ips"]
    customer_username = var.ad["customer_username"]
    subnet_ids        = var.ad["subnet_ids"]
    vpc_id            = var.ad["vpc_id"]
  }
 
   vpc_settings {
    vpc_id     = var.vpc["id"]
    subnet_ids = var.vpc["subnet_ids"]
  }

  tags=var.common_tags
}

variable "vpc" {
  default={
    vpc_id     = ""
    subnet_ids = ""
  }
}

#Adconnector
variable "ad" {
  default={
    name="corp.notexample.com"
    edition=""
    customer_dns_ips  = ["A.B.C.D"]
    customer_username = "Admin"
    size     = "Small"
    type     = "ADConnector"
    vpc_id   = ""
    subnet_ids=["",""]
  }
}


variable "password" {
  type=string
  default="SuperSecretPassw0rd"
}
