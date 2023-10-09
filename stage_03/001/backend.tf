provider "aws" {
  region = "eu-central-1"
}
resource "aws_s3_bucket" "remote_state" {
  bucket = "terraform-s3-backend-locking"
  lifecycle {
    prevent_destroy = true
  }
  versioning {
    enabled = true
  }
}

resource "aws_dynamodb_table" "remote_state_locking" {
  hash_key = "LockID"
  name     = "terraform-s3-backend-locking"
  attribute {
    name = "LockID"
    type = "S"
  }
  billing_mode = "PAY_PER_REQUEST"
}

