resource "random_id" "random1" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

output "random" {
  value = "${random_id.random1.hex}"
  sensitive = false
}

