provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "Server" {
  count = 2 # create two similar EC2 instances
  ami           = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
  security_groups= [var.security_group]

  tags = {
    #Name = "${var.server[count.index]}"
    Name = "Server ${count.index}"
  }
}
