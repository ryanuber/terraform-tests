data "external" "sysinfo" {
  program = ["/bin/bash", "-c", <<EOF
echo '{'

echo -n '"uptime":"'
uptime | tr -d '\n'
echo -n '",'

echo -n '"mem_total_kb":"'
awk '/^MemTotal:/{print $2}' /proc/meminfo | tr -d '\n'
echo '",'

echo -n '"cpu_cores":"'
awk /^processor/ /proc/cpuinfo | wc -l | tr -d '\n'
echo '",'

echo -n '"cpu_core_mhz":"'
awk '/^cpu MHz/{print $4}' /proc/cpuinfo | head -1 | tr -d '\n'
echo '",'

echo -n '"root_disk_size":"'
df -h / | tail -1 | awk '{print $2}' | tr -d '\n'
echo '"'

echo '}'
EOF
]
}

resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }
  byte_length = 8
}

output "sysinfo" {
  value = "${data.external.sysinfo.result}"
}
