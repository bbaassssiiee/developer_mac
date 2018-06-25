You can use this on a Mac to automatically install free software using
one command. Having a high degree of automation in the OSX setup of our
developers proved to be great for new joiners, they are productive in
less than an hour.
 
The scrips can set DNS and proxies and will secure your Mac, check the defaults.sh.

By default most apps are my preferenc, as a minimum it installs python2
using brew to install ansible with pip2.
 
brew cask install: installs MacOS apps and packages.

brew install: installs command line tools/packages

You can add more apps & packages, or uncomment the suggested set,
in vars/main.yml. I divided apps and tools in a few groups.

I would even dare to say that if you are a developer on a Mac that
you could appreciate using this provisioner to install most of you apps 
for example:
 
  - adobe-reader
  - apache-directory-studio
  - cord
  - pycharm-ce
  - eclipse-java
  - google-chrome
  - firefox
  - murasaki
  - skype
  - subnetcalc
  - textmate
  - vagrant
  - virtualbox
  - visualvm
  - robomongo
  - sequel-pro
  - vlc
  - xquartz
