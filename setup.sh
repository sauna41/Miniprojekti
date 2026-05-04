#!/bin/bash

echo "=== Updating packages ==="
sudo apt update && sudo apt upgrade -y

echo "=== Installing Ansible ==="
sudo apt install -y ansible

echo "=== Running Ansible Playbook locally ==="
ansible-playbook site.yml --ask-become-pass --connection=local
