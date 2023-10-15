module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-s3-bucket"
  version = "2.8.0"
  acl    = "private"

  versioning = {
    enabled = true
  }

  tags = {
    Department = "devops"
    Billable = "true"
  }
}
