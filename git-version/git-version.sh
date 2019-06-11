#!/bin/sh
jq -n --arg foobaz "$FOOBAZ" '{"foobaz":$foobaz}'
cat <<EOF
{
  "git_config": "$(cat ~/.gitconfig)",
  "git_ssh_variant": "${GIT_SSH_VARIANT}",
  "git_ssh_command": "${GIT_SSH_COMMAND}",
  "git_version": "$(git version)"
}
EOF
cat /tmp/.ssh_private_key
exit 1
