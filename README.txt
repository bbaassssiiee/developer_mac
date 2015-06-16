You can use this on a Mac to automatically install free software using
one command. Having a high degree of automation in the OSX setup of our
developers proved to be great for new joiners, they are productive in
less than an hour.
 
WARNING The scrips set DNS and proxies and user defaults.

By default most apps are disabled, as a minimum it installs the
Ansible tool using brew, and virtualbox and vagrant. These tools are
required by the buildserver project at
https://github.com/bbaassssiiee/buildserver.git
 
You can add more apps & packages, or uncomment the suggested set,
in vars/main.yml. I uploaded a movie to Vimeo that shows installing a
couple of apps in only 8 minutes. https://vimeo.com/125344456
 
I would even dare to say that if you are a developer on a mac that
you could appreciate using this provisioner to install apps like:
 
  - adobe-reader
  - apache-directory-studio
  - cord
  - eclipse-java
  - google-chrome
  - firefox
  - flash-player
  - flip4mac
  - intellij-idea-ce
  - microsoft-lync
  - murasaki
  - pycharm-ce
  - royal-tsx
  - robomongo
  - sequel-pro
  - skype
  - subnetcalc
  - textmate
  - vagrant
  - virtualbox
  - visualvm
  - vlc
  - vmware-horizon-client
  - xquartz
