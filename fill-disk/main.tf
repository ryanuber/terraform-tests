data "external" "fill-disk" {
  program = ["/bin/sh", "-c", "dd if=/dev/zero of=img bs=1024000000 count=10"]
}
