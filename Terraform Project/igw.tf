resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.Veep.id

  tags = {
    Name = "veep-igw"
  }
}