Automate
=======
Having a high degree of automation in the OSX setup of our developers proved to be great for new joiners, they are productive in less than an hour.

install_on_my_mac.sh
--------------------------------
* You can use this on a Mac to automatically install free software using one command. 
* By default most options are disabled, as a minimum it installs the Ansible tool using brew, and the Munki client, virtualbox, boot2docker, and vagrant. These tools are required by the buildserver project at https://github.com/bbaassssiiee/buildserver.git
* You can add more apps & packages, or uncomment the suggested set, in vars/main.yml

install_munkiserver.sh
--------------------------------
* Use a  Munki and OSX Server to automate software updates for clients





