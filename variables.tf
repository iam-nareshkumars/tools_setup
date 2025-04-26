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
    prometheus = {
      Name          = "prometheus"
      instance_type = "t3.small"
      port_no       = "9090"
    }
    jenkins = {
      Name          = "prometheus"
      instance_type = "t3.medium"
      port_no       = "0"
    }

  }

}