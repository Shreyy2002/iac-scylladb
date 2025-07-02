terraform {
  backend "s3" {
    bucket         = "dev-otms-cloudninja-bucket"
    key            = "env/dev/database/scylladb/instance/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dev-otms-cloudninja-tf-locktable"
    encrypt = true
  }
}
