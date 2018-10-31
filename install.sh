#!/bin/bash

# Install ansible
if ! hash ansible >/dev/null 2>&1; then
    cowsay "Installing Ansible..."
    sudo apt update
    sudo apt install software-properties-common ansible python-apt git cowsay -y
else
    cowsay "Ansible already installed"
fi

# Run Ansible
cowsay "Running Ansible"
ansible-playbook ansible-desktop.yml --ask-become-pass
cowsay "Install Complete"
