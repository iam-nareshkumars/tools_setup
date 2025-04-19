module "tools" {
  for_each = var.tools
  source = "./modules"
  ami = data.aws_ami.main.id
  instance_type = each.value["vault"].instance_type
  Name = each.value["vault"].Name
  zone_id = data.aws_route53_zone.main.zone_id
  domain = var.domain
}