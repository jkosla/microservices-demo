provider "aws" {
  region = var.region
  profile = "demo"
}

resource "aws_s3_bucket" "tf_state" {
  bucket = "tf-state-bucket-jkosla-eu-north-1"

  tags = {
    Name        = "Terraform State"
    Environment = "Dev"
  }
}