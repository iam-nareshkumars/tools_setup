module "tools" {
  for_each      = var.tools
  source        = "./modules"
  ami           = data.aws_ami.main.id
  instance_type = each.value["default"].instance_type
  Name          = each.value["default"].instance_type
  zone_id       = data.aws_route53_zone.main.zone_id
  domain        = var.domain
  port_no       = each.value["default"].instance_type
  tools         = var.tools
}


