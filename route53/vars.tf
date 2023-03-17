variable "lb_name" {
  type    = string
}
variable "aws_profile" {
  type    = string
  default = "terraform"
}
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "route53_zone_dns" {
  type    = string
  default = "de-marauder.me"
}
variable "prom-sub-domain" {
  type    = string
  default = "monitor"
}
variable "grafana-sub-domain" {
  type    = string
  default = "grafana"
}
variable "result-sub-domain" {
  type    = string
  default = "result"
}
variable "vote-sub-domain" {
  type    = string
  default = "vote"
}
variable "sock-sub-domain" {
  type    = string
  default = "sock"
}
