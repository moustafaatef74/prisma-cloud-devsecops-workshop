provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "fa1bf28f8bc593cdbade492941939213fef5bae5"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-06-11 16:38:29"
    git_last_modified_by = "moustafa.atef@nawy.com"
    git_modifiers        = "moustafa.atef"
    git_org              = "moustafaatef74"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "52d2ef78-2f0f-4c28-b6d3-f42d2935f911"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
