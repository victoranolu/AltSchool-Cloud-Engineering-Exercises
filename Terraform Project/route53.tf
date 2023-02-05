resource "aws_route53_zone" "alf" {
  name = "poormanalfred.me"
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.alf.zone_id
  name    = ""
  type    = "A"

  alias {
    name                   = aws_lb.lb-test.dns_name
    zone_id                = aws_lb.lb-test.zone_id
    evaluate_target_health = true
  }
}