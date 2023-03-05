#!/bin/bash

# setup ssh-key for runner access to host
echo ${SSH_KEY} | base64 -d > /sshkey
chmod 600 /sshkey

exec "$@"
