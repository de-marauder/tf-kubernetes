
resource "aws_route53_record" "prom" {
  zone_id = data.aws_route53_zone.domain.zone_id
  name    = "${var.prom-sub-domain}.${var.route53_zone_dns}"
  type = "A"

  alias {
    name                   = data.aws_elb.kube_lb.dns_name
    zone_id                = data.aws_elb.kube_lb.zone_id
    evaluate_target_health = true
  }
}
resource "aws_route53_record" "grafana" {
  zone_id = data.aws_route53_zone.domain.zone_id
  name    = "${var.grafana-sub-domain}.${var.route53_zone_dns}"
  type = "A"

  alias {
    name                   = data.aws_elb.kube_lb.dns_name
    zone_id                = data.aws_elb.kube_lb.zone_id
    evaluate_target_health = true
  }
}
resource "aws_route53_record" "result" {
  zone_id = data.aws_route53_zone.domain.zone_id
  name    = "${var.result-sub-domain}.${var.route53_zone_dns}"
  type = "A"

  alias {
    name                   = data.aws_elb.kube_lb.dns_name
    zone_id                = data.aws_elb.kube_lb.zone_id
    evaluate_target_health = true
  }
}
resource "aws_route53_record" "vote" {
  zone_id = data.aws_route53_zone.domain.zone_id
  name    = "${var.vote-sub-domain}.${var.route53_zone_dns}"
  type = "A"

  alias {
    name                   = data.aws_elb.kube_lb.dns_name
    zone_id                = data.aws_elb.kube_lb.zone_id
    evaluate_target_health = true
  }
}
resource "aws_route53_record" "sock" {
  zone_id = data.aws_route53_zone.domain.zone_id
  name    = "${var.sock-sub-domain}.${var.route53_zone_dns}"
  type = "A"

  alias {
    name                   = data.aws_elb.kube_lb.dns_name
    zone_id                = data.aws_elb.kube_lb.zone_id
    evaluate_target_health = true
  }
}

output "nameservers" {
  value = data.aws_route53_zone.domain.name_servers
}