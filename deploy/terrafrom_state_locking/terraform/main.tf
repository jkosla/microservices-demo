provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "tf_state" {
  bucket = "tf-state-bucket-jkosla"

  tags = {
    Name        = "Terraform State"
    Environment = "Dev"
  }
}