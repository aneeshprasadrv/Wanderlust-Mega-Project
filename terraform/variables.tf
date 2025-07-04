variable "aws_region" {
  description = "AWS region where resources will be provisioned"
  default     = "us-west-2"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-075686beab831bb7f"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  default     = "t2.large"
}


variable "tcp_ports" {
  default = [
    { from_port = 22, to_port = 22,  description = "SSH" },
    { from_port =  80, to_port = 80,  description = "HTTP" },
    { from_port = 443, to_port =443,  description = "HTTPS" },
    { from_port = 6443, to_port = 6443, description = "" },
    { from_port = 465, to_port = 465, description = "" },
    { from_port  = 25, to_port = 25, description = "" },
    { from_port  = 8080, to_port = 8080, description = "" },
    { from_port = 3000, to_port = 10000, description = "" },
    { from_port = 30000, to_port = 32767, description = "" },
    { from_port = 6379, to_port = 6379, description = "" },



  ]
}