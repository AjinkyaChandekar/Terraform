provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Server" {
  ami             = "ami-0e472ba40eb589f49"
  key_name        = var.key_name
  instance_type   = var.instance_type
  security_groups = [var.security_group]

  tags = {
    Name = "Server"
  }
}
