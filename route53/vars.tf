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
  default = "prom"
}
variable "grafana-sub-domain" {
  type    = string
  default = "graf"
}
variable "result-sub-domain" {
  type    = string
  default = "result-app"
}
variable "vote-sub-domain" {
  type    = string
  default = "vote-app"
}
variable "sock-sub-domain" {
  type    = string
  default = "sock-shop"
}
