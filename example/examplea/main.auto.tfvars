common_tags = {
"createdby" = "Terraform" }

password = "dontusethis"

#connector
ad = {
  name              = "corp.notexample.com"
  edition           = ""
  customer_dns_ips  = ["A.B.C.D"]
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
  id         = "vpc123124"
  subnet_ids = ["subnet-1234", "subnet2345"]
}
