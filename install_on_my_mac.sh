#!/bin/bash
### Manage the (developer) software on your Mac with this command.
### @bbaassssiiee
### https://github.com/bbaassssiiee/developer_mac

## download_apple_xcode: http://appstore.com
# You need to download XCode, or only the command line tools
xcrun -f git || (open https://developer.apple.com/downloads && exit 1)
    
## install_apple_xcode_command_line_tools:
# then you can install the command line tools you need
xcrun -f git ||sudo xcodebuild -license
xcrun -f git ||xcode-select --install 

## install_homebrew: http://brew.sh
# Brew is the package manager of choice on the Mac
if [ ! -x /usr/local/bin/brew ]
then
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

## install_ansible: http://ansible.com
brew install --update ansible

## install_cask: http://caskroom.io
brew install --update caskroom/cask/brew-cask

##install_from_galaxy:
# re-use the role from 'Ansible for DevOps, Jeff Geerling, 2014'
ansible-galaxy install --force -r requirements.yml

##install_software_on_this_mac:
# specify the apps you want in vars/main.yml
ansible-playbook provisioner.yml -i inventory.ini --ask-sudo-pass

##install_panamax:
brew install --upgrade http://download.panamax.io/installer/brew/panamax.rb
panamax init
open http://10.0.0.200:3000/dashboard
