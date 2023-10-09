provider "aws" {
  region = "eu-central-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"

  instance_name = "stage02-ec2"
  instance_type = "t2.micro"
}

