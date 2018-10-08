data "external" "slow-data-source" {
  program = ["/bin/bash", "-c", <<EOF
uptime
echo "=== Memory ========================="
free -m
echo
echo "=== CPU ============================"
cat /proc/cpuinfo
EOF
]
}
