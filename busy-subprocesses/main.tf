data "external" "busy-subprocess-1" {
  program = ["/bin/sh", "-c", "dd if=/dev/urandom of=/dev/null bs=1024 count=10000000; echo '{}'"]
}

data "external" "busy-subprocess-2" {
  program = ["/bin/sh", "-c", "dd if=/dev/urandom of=/dev/null bs=1024 count=10000000; echo '{}'"]
}

data "external" "busy-subprocess-3" {
  program = ["/bin/sh", "-c", "dd if=/dev/urandom of=/dev/null bs=1024 count=10000000; echo '{}'"]
}

data "external" "busy-subprocess-4" {
  program = ["/bin/sh", "-c", "dd if=/dev/urandom of=/dev/null bs=1024 count=10000000; echo '{}'"]
}

data "external" "busy-subprocess-5" {
  program = ["/bin/sh", "-c", "dd if=/dev/urandom of=/dev/null bs=1024 count=10000000; echo '{}'"]
}
