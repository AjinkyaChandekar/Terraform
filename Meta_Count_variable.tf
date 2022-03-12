variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     =  "TF-SERV"
}

variable "instance_type" {
  description = "instance type for ec2"
  type = map(string)
  default = {
	prod = "t2.micro"
	dev  = "t2.large"
}
}

variable "security_group" {
  description = "Name of security group"
  default     = "SSH"
}


variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = "ami-0e472ba40eb589f49"
}
