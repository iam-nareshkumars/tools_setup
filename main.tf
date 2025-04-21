module "tools" {
  for_each      = var.tools
  source        = "./modules"
  ami           = data.aws_ami.main.id
  instance_type = each.value["instance_type"]
  Name          = each.value["Name"]
  zone_id       = data.aws_route53_zone.main.zone_id
  domain        = var.domain
  port_no       = each.value["port_no"]
}

resource "null_resource" "main" {
  triggers = {
    timestamp = timestamp()
  }
  depends_on = [module.tools]
  for_each   = var.tools
  provisioner "local-exec" {
    command = <<EOT
      sleep 10; 
      cd  /var/lib/jenkins/workspace/tools_automation
      ansible-playbook -i inv vault.eternallearnings.shop, -e ansible_username=ec2-user -e ansible_password=DevOps321 -e toolname=${each.value["Name"]} tool.yml
    EOT

  }

}