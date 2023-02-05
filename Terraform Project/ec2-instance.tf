resource "aws_key_pair" "vic" {
  key_name   = "victor"
  public_key = var.ssh
}

resource "aws_instance" "Insta" {
  ami                         = var.ami
  instance_type               = var.inst
  subnet_id                   = aws_subnet.Veep-Sub.id
  key_name                    = aws_key_pair.vic.id
  vpc_security_group_ids      = [aws_security_group.Sgf.id]
  associate_public_ip_address = true
}

resource "aws_instance" "Insta01" {
  ami                         = var.ami
  instance_type               = var.inst
  subnet_id                   = aws_subnet.Veep-Sub01.id
  key_name                    = aws_key_pair.vic.id
  vpc_security_group_ids      = [aws_security_group.Sgf.id]
  associate_public_ip_address = true
}

resource "aws_instance" "Insta02" {
  ami                         = var.ami
  instance_type               = var.inst
  subnet_id                   = aws_subnet.Veep-Sub02.id
  key_name                    = aws_key_pair.vic.id
  vpc_security_group_ids      = [aws_security_group.Sgf.id]
  associate_public_ip_address = true
}