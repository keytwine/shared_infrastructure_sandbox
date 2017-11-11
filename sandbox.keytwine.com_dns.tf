resource "aws_route53_zone" "sandbox_keytwine_com" {
  name = "sandbox.keytwine.com"
}

resource "aws_route53_record" "bosh-lite_sandbox_keytwine_com" {
  zone_id = "${aws_route53_zone.sandbox_keytwine_com.zone_id}"
  name    = "*.bosh-lite.sandbox.keytwine.com"
  type    = "A"
  ttl     = "300"
  records = ["10.244.0.34"]
}

output "sandbox_keytwine_com_ns" {
  value = "${aws_route53_zone.sandbox_keytwine_com.name_servers}"
}
