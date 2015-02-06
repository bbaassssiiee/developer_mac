#!/bin/bash
## Ansible updates the Mac software using brew, cask & ansible
ansible-playbook main.yml -i inventory.ini --ask-sudo-pass
