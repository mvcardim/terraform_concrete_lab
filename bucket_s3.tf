resource "aws_s3_bucket" "concete_s3" {
  bucket = "concete-s3"
  acl    = "public-read"

  tags = {
    Name = "Concrete S3"
  }
}