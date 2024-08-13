data "external" "fill-disk" {
  program = ["/bin/sh", "-c", "dd if=/dev/zero of=img bs=1024 count=10000000000"]
}
