resource "random_id" "random1" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

output "random" {
  value = "${random_id.random1.hex}"
}

data "external" "apply" {
  program = ["/bin/bash", "-c", "TF_INPUT=0 TF_FORCE_LOCAL_BACKEND=1 terraform apply -lock=false"]
}
