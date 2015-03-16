#!/bin/bash -v
# software updates could be done using Munki
softwareupdate -i -r -a

brew update
brew cleanup
brew prune
brew upgrade brew-cask || /usr/bin/true
brew cask cleanup

## Ansible updates the Mac software using brew, cask & ansible
ansible-playbook provisioner.yml -i inventory.ini -l localhost --ask-sudo-pass

