resource "random_id" "random1" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 8

  provisioner "local-exec" {
    command = "${path.module}/syscall-perf.sh"
  }
}

output "random" {
  value = "${random_id.random1.hex}"
  sensitive = true
}
