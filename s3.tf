resource "aws_s3_bucket" "state" {
  bucket = "${var.application_name}-tf-state"
}

resource "aws_s3_bucket_ownership_controls" "state" {
  bucket = aws_s3_bucket.state.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "state" {
  depends_on = [aws_s3_bucket_ownership_controls.state]

  bucket = aws_s3_bucket.state.id
  acl    = "private"
}
