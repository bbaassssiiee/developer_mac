#!/bin/bash -v
# software updates using Munki and brew
sudo /usr/local/munki/managedsoftwareupdate
softwareupdate -i -r -a

brew update
brew cleanup
brew prune
brew upgrade brew-cask || /usr/bin/true
brew cask install --force munki
brew cask cleanup
