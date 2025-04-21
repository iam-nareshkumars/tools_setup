module "tools" {

  source        = "./modules"
  ami           = data.aws_ami.main.id
  instance_type = var.tools["vault"].instance_type
  Name          = var.tools["vault"].Name
  zone_id       = data.aws_route53_zone.main.zone_id
  domain        = var.domain
  port_no       = var.tools["vault"].port_no
  tools         = var.tools
}

