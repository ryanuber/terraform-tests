#!/bin/sh
cat <<EOF
{
  "git_version": "$(git version)"
}
EOF
