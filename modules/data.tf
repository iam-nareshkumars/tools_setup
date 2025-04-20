data "aws_ami" "main" {

  most_recent = true
  owners      = ["703671922956"]

  filter {
    name   = "Description"
    values = ["MyPracticeImage"]
  }

}

data "aws_route53_zone" "main" {
  name = var.domain
}