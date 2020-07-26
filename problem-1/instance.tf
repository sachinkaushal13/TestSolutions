resource "aws_instance" "ec2_devops" {
  ami           = lookup(var.ami_id, var.region)
  instance_type = var.instance_type

# Public Subnet assign to instance
  subnet_id     = aws_subnet.sub_public_devops.id

# Security group assign to instance
  vpc_security_group_ids= [aws_security_group.sg_devops.id]

# key name
key_name = var.key_name

#tags
tags = {
      Name = "ec2_devops"
    }

private_ip = "10.0.0.12"
}
