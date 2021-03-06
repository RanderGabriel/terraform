resource "aws_s3_bucket" "terraform_interpolation" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_bucket_object" "terraform_interpolation" {
  bucket       = aws_s3_bucket.terraform_interpolation.bucket
  key          = local.ip_file_path
  source       = local.ip_file_path
  etag         = filemd5(local.ip_file_path)
  tags         = local.common_tags
  content_type = "application/json"
}

resource "aws_s3_bucket_object" "random" {
  bucket       = aws_s3_bucket.terraform_interpolation.bucket
  key          = "config/${random_pet.bucket.id}"
  source       = local.ip_file_path
  etag         = filemd5(local.ip_file_path)
  content_type = "application/json"

}