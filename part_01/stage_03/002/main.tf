provider "aws" {
  region = "eu-central-1"
}

terraform {
  backend "s3" {
    bucket         = "terraform-s3-backend-locking"
    key            = "terraform/backend/terraform_aws.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-s3-backend-locking"
    encrypt        = true
  }
}

resource "aws_instance" "terraform_aws_ec2" {
  ami           = "ami-0b1d038d595a0d526"
  instance_type = "t2.micro"
}

