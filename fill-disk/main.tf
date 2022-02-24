data "external" "fill-disk" {
  program = ["/bin/sh", "-c", "dd if=/dev/zero of=img bs=10240000 count=1000"]
}
