variable "instance_name" {
  description = "The name tag for the EC2 instance."
}

variable "instance_type" {
  description = "The type of EC2 instance."
  default     = "t2.micro"
}
