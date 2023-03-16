variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

variable "cluster_name" {
  default = "kube-marauder"
}

variable "ci_instance_type" {
  default = "t2.micro"
}

variable "AWS_ACCESS_KEY_ID" {
  type = string
  sensitive = true
  default = "****************"
}
variable "AWS_SECRET_ACCESS_KEY" {
  type = string
  sensitive = true
  default = "****************"
}
