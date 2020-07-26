variable "cidr" {
  default     = "10.0.0.0/16"
}

variable "region" {
  default = "us-east-1"
}
variable "ami_id" {
  default = {
    us-east-1 = "ami-08f3d892de259504d"
    us-east-2 = "ami-0a58e22c727337c51"
  }
}
variable "instance_type" {
  default = "t2.micro"
}
variable "key_name" {
  default = "kp_devops"
}
