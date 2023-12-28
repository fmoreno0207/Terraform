module "dynamodb_example" {
  source        = "../modules/dynamodb"
  region = "us-east-1"
  table_name    = "tabla-dynamodb"
  read_capacity = 20
  write_capacity = 20
}