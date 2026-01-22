resource "aws_route53_record" "www" {
 count = 4
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.roboshop[count.index].private_ip]
}