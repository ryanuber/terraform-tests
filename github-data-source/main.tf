terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.5.2"
    }
  }
}

provider "github" {}

data "github_repository" "terraform-tests-1" {
    full_name = "ryanuber/terraform-tests"
}

data "github_repository" "terraform-tests-2" {
    full_name = "ryanuber/terraform-tests"
}

data "github_repository" "terraform-tests-3" {
    full_name = "ryanuber/terraform-tests"
}

data "github_repository" "terraform-tests-4" {
    full_name = "ryanuber/terraform-tests"
}

data "github_repository" "terraform-tests-5" {
    full_name = "ryanuber/terraform-tests"
}

data "github_repository" "terraform-tests-6" {
    full_name = "ryanuber/terraform-tests"
}

data "github_repository" "terraform-tests-7" {
    full_name = "ryanuber/terraform-tests"
}

data "github_repository" "terraform-tests-8" {
    full_name = "ryanuber/terraform-tests"
}

data "github_repository" "terraform-tests-9" {
    full_name = "ryanuber/terraform-tests"
}

data "github_repository" "terraform-tests-10" {
    full_name = "ryanuber/terraform-tests"
}
