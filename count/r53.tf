resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "${var.instances}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = aws_instance.aws_instance.prviate_ip
}