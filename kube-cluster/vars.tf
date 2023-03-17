variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

variable "cluster_name" {
  default = "kube-marauder"
}
variable "aws_profile" {
  default= "terraform"
}