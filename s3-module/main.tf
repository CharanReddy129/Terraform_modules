terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.91.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "bucket" {
  bucket        = var.bucket_name
  force_destroy = var.force_destroy
  tags = {
    Name = var.bucket_name
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  count  = var.versioning ? 1 : 0
  bucket = aws_s3_bucket.bucket.id

  versioning_configuration {
    status = var.versioning_status
  }
}

resource "aws_s3_bucket_public_access_block" "public_access" {
  count  = var.public_access ? 1 : 0
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


resource "aws_s3_bucket_server_side_encryption_configuration" "name" {
  count  = var.sse ? 1 : 0
  bucket = aws_s3_bucket.bucket.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = var.sse_algorithm
    }
  }
}