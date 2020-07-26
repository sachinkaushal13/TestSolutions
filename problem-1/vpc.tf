
resource "aws_vpc" "vpc_devops" {
  cidr_block = var.cidr

  tags = {
      Name = "vpc_devops"
    }
}
