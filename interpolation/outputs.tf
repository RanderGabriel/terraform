output "bucket_name" {
  value = aws_s3_bucket.terraform_interpolation.bucket
}

output "bucket_arn" {
  value       = aws_s3_bucket.terraform_interpolation.arn
  description = ""
}

output "ips_file_path" {
  value = "${aws_s3_bucket.terraform_interpolation.bucket}/${aws_s3_bucket_object.terraform_interpolation.key}"
}