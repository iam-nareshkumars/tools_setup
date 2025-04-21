module "tools" {

  source        = "./modules"
  ami           = data.aws_ami.main.id
  instance_type = each.value["instance_type"]
  Name          = each.value["Name"]
  zone_id       = data.aws_route53_zone.main.zone_id
  domain        = var.domain
  port_no       = each.value["port_no"]
  tools         = var.tools
}

