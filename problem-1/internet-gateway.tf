resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc_devops.id

  tags = {
        Name = "IGW"
      }

}
