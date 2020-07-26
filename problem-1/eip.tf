resource "aws_eip" "elastic-IP" {
  vpc = true

  instance                  = aws_instance.ec2_devops.id
  associate_with_private_ip = "10.0.0.12"
  depends_on                = [aws_internet_gateway.gw]
}
