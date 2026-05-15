variable "bucket_name" {
    type = string
    description = "The name of the S3 bucket "
    default = "my-unique-bucket-name-12345" #S3 bucket names must be globally unique"
}

variable "tags" {
    type = map(string)
    description = "Tags to apply to the S3 bucket "
}