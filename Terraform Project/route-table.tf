resource "aws_route_table" "NatR" {
  vpc_id = aws_vpc.Veep.id

  route {
    cidr_block = var.route
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "NathanRoute"
  }
}

resource "aws_route_table_association" "NatAss"{ 
  subnet_id      = aws_subnet.Veep-Sub.id
  route_table_id = aws_route_table.NatR.id
}

resource "aws_route_table_association" "NatAss01"{ 
  subnet_id      = aws_subnet.Veep-Sub01.id
  route_table_id = aws_route_table.NatR.id
}

resource "aws_route_table_association" "NatAss02"{ 
  subnet_id      = aws_subnet.Veep-Sub02.id
  route_table_id = aws_route_table.NatR.id
}
