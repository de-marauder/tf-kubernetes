resource "aws_key_pair" "kube-keypair" {

  key_name   = "${var.cluster_name}-key"
  public_key = tls_private_key.rsa.public_key_openssh

}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "kube-keypair" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "ansible/${var.cluster_name}-key"
  file_permission = 0400
}