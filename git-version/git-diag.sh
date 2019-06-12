#!/bin/sh
cat <<EOF
{
  "ssh_key": "$(ssh-keygen -lf /tmp/.ssh_private_key)"
}
EOF
