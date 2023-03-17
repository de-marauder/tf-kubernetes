data "aws_elb" "kube_lb" {
  name = var.lb_name
}
data "aws_route53_zone" "domain" {
  name         = var.route53_zone_dns
}
