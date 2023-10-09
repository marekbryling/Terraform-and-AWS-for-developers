resource "aws_instance" "this" {
  ami           = "ami-0b1d038d595a0d526"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
