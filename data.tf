data "aws_ami" "main" {

  most_recent = true
  owners      = ["355449129696"]

  filter {
    name   = "description"
    values = ["MyPracticeImage"]
  }

}

data "aws_route53_zone" "main" {
  name = var.domain
}