resource "aws_s3_bucket" "my_bucket" {
  bucket = lower(var.bucket_name)

  tags = merge(var.tags, {
    Name = var.bucket_name
  })

  lifecycle {
    prevent_destroy = true #This protects the bucket from accidental deletion.
  }
}

#If someone runs:
#Terraform will STOP with an error.