resource "null_resource" "awscli" {
  provisioner "local-exec" {
    command = "aws s3 ls"
  }
}
