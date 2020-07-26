resource "aws_route_table" "route-public" {
  vpc_id = aws_vpc.vpc_devops.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

}

resource "aws_route_table_association" "sub_public_devops" {
  subnet_id      = aws_subnet.sub_public_devops.id
  route_table_id = aws_route_table.route-public.id
}
