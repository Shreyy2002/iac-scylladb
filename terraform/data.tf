data "terraform_remote_state" "otms_vpc" {
  backend = "s3"
  config = {
    bucket = var.remote_bucket_name
    key    = var.remote_vpc_key
    region = var.bucket_region
  }
}

data "terraform_remote_state" "otms_subnet" {
  backend = "s3"
  config = {
    bucket = var.remote_bucket_name
    key    = var.remote_subnet_key
    region = var.bucket_region
  }
}

data "terraform_remote_state" "scylladb_sg" {
  backend = "s3"
  config = {
    bucket = var.remote_bucket_name
    key    = var.remote_scylladb_sg_key
    region = var.bucket_region
  }
}
