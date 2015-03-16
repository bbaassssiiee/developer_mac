#!/bin/bash -v
# software updates could be done using Munki
#softwareupdate -i -r -a

brew update
brew prune
## Ansible updates the Mac software using brew, cask & ansible
ansible-playbook provisioner.yml -i inventory.ini --ask-sudo-pass

