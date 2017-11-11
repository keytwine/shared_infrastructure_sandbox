resource "aws_route53_zone" "sandbox_keytwine_com" {
  name = "sandbox.keytwine.com"
}

output "sandbox_keytwine_com_ns" {
  value = "${aws_route53_zone.sandbox_keytwine_com.name_servers}"
}
