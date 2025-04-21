variable "domain" {
  default = "eternallearnings.shop"
}
variable "tools" {
  default = {
    vault = {
      Name          = "vault"
      instance_type = "t3.small"
      port_no       = "8200"
    }
    elk = {
      Name          = "elk"
      instance_type = "t3.small"
      port_no       = "53"
    }
  }

}