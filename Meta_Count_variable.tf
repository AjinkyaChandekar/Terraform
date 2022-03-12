variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     =  "TF-SERV"
}

variable "instance_type" {
  description = "instance type for ec2"
  default = "t2.micro"

}

variable "security_group" {
  description = "Name of security group"
  default     = "SSH"
}


variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = "ami-0e472ba40eb589f49"
}
