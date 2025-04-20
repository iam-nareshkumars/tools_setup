module "tools" {
  for_each      = var.tools
  source        = "./modules"
  ami           = data.aws_ami.main.id
  instance_type = each.value["instance_type"]
  Name          = each.value["Name"]
  zone_id       = data.aws_route53_zone.main.zone_id
  domain        = var.domain
}

resource "null_resource" "main" {
  for_each = var.tools
  provisioner "local-exec" {
    command = <<EOT
      sleep 10; 
      pip3.11 install ansible;
      ansible-playbook -i inv -e ansible_username=ec2-user -e ansible_password=DevOps321 -e toolname=${each.value["Name"]} tool.yml
    EOT

  }

}