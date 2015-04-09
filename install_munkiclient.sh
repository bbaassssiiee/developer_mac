#!/bin/bash
### Manage software on your Mac withs this command.

scope=$1
if [ -z $scope ]
then
    scope=clients
fi
ansible-playbook playbooks/provisioner.yml -l $scope -i inventory.ini --ask-sudo-pass

