terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}

provider "aws" { }

resource "aws_key_pair" "canary" {
  key_name = "canary"

  # By assigning a constantly changing value to a stable key, we will be
  # guaranteed there is a change to apply every time.
  tags = { "timestamp": timestamp() }

  # This is a required attribute for creating a keypair. This key should not be
  # used for anything, and is just a throw-away keypair created to satisfy the
  # provider validation for this field.
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDtH/tlWAU+BlXhIDyoEaOxqjxfztNwNjjBalX3h4z/uVoQAFn7+uR8yXnsSzYLezwUX0mKDpQPAmiTfIfCrW98K4sFDI+ArhjITFwGZMqhojO1T3jJ5S/+ho1N3smjMCs+SaGq8GKT2ex32KrtsatoeezFmptITnjz63PL9USuaw=="
}
