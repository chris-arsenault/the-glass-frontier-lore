locals {
  editorial_directory = "${path.module}/../../build/site-internal"
  editorial_files = {
    for file in fileset(local.editorial_directory, "**") : file => file
  }
}

resource "aws_s3_bucket" "editorial" {
  bucket = "${local.prefix}-editorial-${data.aws_caller_identity.current.account_id}"
}

resource "aws_s3_bucket_public_access_block" "editorial" {
  bucket = aws_s3_bucket.editorial.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "editorial" {
  bucket = aws_s3_bucket.editorial.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_versioning" "editorial" {
  bucket = aws_s3_bucket.editorial.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "editorial" {
  bucket = aws_s3_bucket.editorial.id

  rule {
    id     = "discard-old-generated-bundles"
    status = "Enabled"

    filter {}

    noncurrent_version_expiration {
      noncurrent_days = 30
    }
  }

  depends_on = [aws_s3_bucket_versioning.editorial]
}

resource "aws_s3_object" "editorial" {
  for_each = local.editorial_files

  bucket       = aws_s3_bucket.editorial.id
  key          = "${local.editorial_prefix}/${each.key}"
  source       = "${local.editorial_directory}/${each.key}"
  source_hash  = filemd5("${local.editorial_directory}/${each.key}")
  content_type = "application/json"

  depends_on = [
    aws_s3_bucket_server_side_encryption_configuration.editorial,
  ]
}
