variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}


variable "vpc" {
  default = {
    vpc_id     = ""
    subnet_ids = ""
  }
}


variable "ad" {
}


variable "password" {
  type = string
}
