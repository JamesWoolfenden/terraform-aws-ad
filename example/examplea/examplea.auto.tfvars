common_tags = {
  createdby = "terraform"
  module    = "terraform-aws-ad"
}

password = "dontusethis"

#connector
ad = {
  name              = "corp.notexample.com"
  edition           = ""
  customer_dns_ips  = ["10.0.0.0"]
  customer_username = "Admin"
  size              = "Small"
  type              = "ADConnector"
}
/*
#MSad
ad={
    name="corp.notexample.com"
    edition  = "Standard"
    customer_dns_ips  = ""
    customer_username = ""
    type     = "MicrosoftAD"
    size     = ""
}

#simple
ad={
    name="corp.notexample.com"
    edition  = ""
    customer_dns_ips  = ""
    customer_username = ""
    type     = ""
    size     = "Small"
}*/

#populated for MSAD and SimpleAD
vpc = {
  vpc_id     = "vpc123124"
  subnet_ids = ["subnet-1234", "subnet2345"]
}
