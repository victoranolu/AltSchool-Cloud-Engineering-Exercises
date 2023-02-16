resource "aws_lb" "lb-testing" {
  name               = "PMA-LB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sgf-lb.id]
  subnets            = [for subnet in aws_subnet.Veep-Sub : subnet.id]

  enable_deletion_protection = true

  tags = {
    Environment = "dev"
  }
}

resource "aws_lb_listener" "listening" {
  load_balancer_arn = aws_lb.lb-testing.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target.arn
  }
}

resource "aws_lb_listener_rule" "static" {
  listener_arn = aws_lb_listener.listening.arn
  priority     = 100

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target.arn
  }
}

resource "aws_lb_target_group" "target" {
  name     = "T-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.Veep.id
}

resource "aws_lb_target_group_attachment" "tg-att" {
  target_group_arn = aws_lb_target_group.test.arn
  target_id        = aws_instance.Insta.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "tg-att01" {
  target_group_arn = aws_lb_target_group.test.arn
  target_id        = aws_instance.Insta01.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "tg-att02" {
  target_group_arn = aws_lb_target_group.test.arn
  target_id        = aws_instance.Insta02.id
  port             = 80
}
