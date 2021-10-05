data "external" "aws-mds-connectable" {
  program = ["bash", "-c", <<EOF
echo '{"aws_mds_connectable":'
curl -s -m 3 http://169.254.169.254/latest/meta-data/
[ $? -eq 0 ] && echo '"true"' || echo '"false"'
echo '}'
EOF
]
}

output "aws_mds_connectable" {
  value = data.external.aws-mds-connectable.result["aws_mds_connectable"]
}
