data "external" "git_version" {
  program = ["./git-version.sh"]
}

output "git_version" {
  value = data.external.git_version
}
