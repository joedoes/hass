#!/bin/bash
export GIT_SSH_COMMAND="ssh -i /config/.ssh/id_ed25519 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/config/.ssh/known_hosts"
cd /config
git add -A
git diff --cached --quiet && exit 0
git commit -m "auto-backup: $(date +%Y-%m-%d)"
git push
