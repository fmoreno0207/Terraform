provider "aws" {
   region = "ap-southeast-1" # Asegúrate de que la región sea la correcta
 }

module "buckets" {
  source       = "../modules/buckets"
  region       = "ap-southeast-1" # Puedes cambiar esto según tu región preferida
  bucket_name   = "bucket-dev31" # Puedes cambiar esto según el nombre que desees
}

output "my_s3_bucket_info" {
  value = {
    bucket_id   = module.buckets.bucket_id
    bucket_arn  = module.buckets.bucket_arn
    bucket_name = module.buckets.bucket_name
  }
}
