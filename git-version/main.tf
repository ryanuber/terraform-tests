data "external" "git-version" {
  program = ["git", "version"]
}
