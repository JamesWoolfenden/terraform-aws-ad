variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}


variable "vpc" {
  default = {
    vpc_id     = ""
    subnet_ids = ""
  }
}

#Adconnector
variable "ad" {
  default = {
    name              = "corp.notexample.com"
    edition           = ""
    customer_dns_ips  = ["A.B.C.D"]
    customer_username = "Admin"
    size              = "Small"
    type              = "ADConnector"
    vpc_id            = ""
    subnet_ids        = ["", ""]
  }
}


variable "password" {
  type = string
}
