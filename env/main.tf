data "external" "env" {
  program = ["/bin/bash", "-c", <<EOF
echo -n '{"env":"'
env | tr '\n' ' ' | sed 's/"/\\"/g'
echo -n '"}'
EOF
]
}

output "env" {
  value = data.external.env.result
}
