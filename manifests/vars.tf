variable "cluster_name" {
  type        = string
  description = "Kubernetes provider cluster name"
  default = "kube-marauder"
}
# variable "host" {
#   type        = string
#   description = "Kubernetes provider host"
# }
# variable "cluster_ca_certificate" {
#   type        = string
#   description = "Kubernetes provider cluster CA certificate"
# }
# variable "token" {
#   type        = string
#   description = "Kubernetes provider token"
# }
variable "email" {
  type        = string
  description = "Email for ssl encryption"
  default = "chiezike16@gmail.com"
}
variable "aws_profile" {
  type        = string
  description = "AWS profile to run terraform with. Should have access to eks cluster"
  default = "terraform"
}
variable "region" {
  type        = string
  description = "Region where cluster is located"
  default = "us-east-1"
}