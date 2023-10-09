provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0b1d038d595a0d526"
  instance_type = "t3.micro"

  tags = {
    Name = "stage_01"
  }

}

output "instance_ip" {
  value = aws_instance.web.public_ip
}
