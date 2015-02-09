#!/bin/bash
##install_panamax:
brew install --upgrade http://download.panamax.io/installer/brew/panamax.rb
panamax init
open http://10.0.0.200:3000/dashboard
