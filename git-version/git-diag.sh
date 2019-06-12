#!/bin/sh
set +e

cat <<EOF
======= GIT_SSH_COMMAND value
${GIT_SSH_COMMAND}

======= git version
`git version || :`

======= /tmp/.ssh_private_key contents:
`cat /tmp/.ssh_private_key || :`
EOF

exit 1
