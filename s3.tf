provider "aws" {
  
  region     = "ap-northeast-1"
  access_key = "AKIA**A2ZQZLBII5****"
  secret_key = "nIs2Xo79****5TFh3h8JKPPrxeUWyBJ*******"
}
resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
