resource "aws_subnet" "sub_public_devops" {
  vpc_id     = aws_vpc.vpc_devops.id
  map_public_ip_on_launch = true
  cidr_block = "10.0.0.0/24"

  tags = {
       Name = "sub_public_devops"
     }
}
