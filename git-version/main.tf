resource "null_resource" "foo" { }

data "external" "git-diag" {
  program = ["./git-diag.sh"]
}
