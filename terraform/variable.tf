variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

variable "env" {
  default     = "dev"
  description = "Environment name"
}

variable "owner" {
  default     = "shrey"
  description = "Owner name"
}

variable "project_name" {
  default     = "otms"
  description = "Project name"
}

variable "app_name" {
  default     = "scylladb"
  description = "Project name"
}

variable "costcenter" {
  default     = "dev-otms"
  description = "Cost center tag"
}

variable "instance_type" {
  default     = "t2.medium"
  description = "EC2 instance type"
}

variable "ami_id" {
  description = "AMI ID for Ubuntu 22.04 in us-east-1"
  default     = "ami-053b0d53c279acc90" # Ubuntu 22.04 LTS us-east-1
}

variable "key_name" {
  description = "Key pair name for SSH access"
  default     = "dev-otms-key"
}

variable "remote_bucket_name" {
  default     = "dev-otms-cloudninja-bucket"
  description = "S3 bucket storing remote tfstate"
}

variable "bucket_region" {
  default     = "us-east-1"
  description = "Region of the S3 bucket"
}

variable "remote_vpc_key" {
  default     = "env/dev/network/vpc/terraform.tfstate"
  description = "Remote VPC state path"
}

variable "remote_subnet_key" {
  default     = "env/dev/network/subnets/terraform.tfstate"
  description = "Remote Subnet state path"
}

variable "remote_scylladb_sg_key" {
  default     = "env/dev/database/scylladb/security-group/terraform.tfstate"
  description = "Remote SG for notification API"
}
