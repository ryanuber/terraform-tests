terraform {
  backend "remote" {
    hostname = "https://app.terraform.io"
    organization = "ryanuber"
    workspaces = {
      name = "foo"
    }
  }
}

resource "null_resource" "foo" {}
