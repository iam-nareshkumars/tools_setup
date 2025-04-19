variable "domain" {
  default = "eternallearnings.shop"
}
variable "tools" {
  default = {
    vault = {
      Name          = "vault"
      instance_type = "t3.small"
    }
  }

}