resource "aws_instance" "scylladb_api" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = data.terraform_remote_state.otms_subnet.outputs.subnet_ids["dev-otms-database-subnet"]
  vpc_security_group_ids      = [data.terraform_remote_state.scylladb_sg.outputs.scylladb_sg_id]
  associate_public_ip_address = false
  key_name                    = var.key_name

  tags = {
    Name        = local.instance_name
    env         = var.env
    owner       = var.owner
    database    = var.app_name
    costcenter  = var.costcenter
  }
}
