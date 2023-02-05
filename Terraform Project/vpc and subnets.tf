resource "aws_vpc" "Veep" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name        = "Veep"
    environment = "dev"
  }
}

resource "aws_subnet" "Veep-Sub" {
  vpc_id            = aws_vpc.Veep.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    Name      = "Sub01"
    environment = "dev"
  }
}

resource "aws_subnet" "Veep-Sub01" {
  vpc_id            = aws_vpc.Veep.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "eu-west-2b"

  tags = {
    Name      = "Sub02"
    environment = "dev"
  }
}

resource "aws_subnet" "Veep-Sub02" {
  vpc_id            = aws_vpc.Veep.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "eu-west-2c"

  tags = {
    Name      = "Sub03"
    environment = "dev"
  }
}