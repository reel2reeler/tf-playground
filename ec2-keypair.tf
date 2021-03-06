resource "tls_private_key" "generated" {
  algorithm = "RSA"
}

resource "local_file" "private_key_pem" {
  content  = tls_private_key.generated.private_key_pem
  filename = "${path.module}/ignore-dir/${var.aws_region}-${var.env_name}"
}

resource "aws_key_pair" "generated" {
  key_name   = "${var.aws_region}-${var.env_name}"
  public_key = tls_private_key.generated.public_key_openssh

  lifecycle {
    ignore_changes = [key_name]
  }
}