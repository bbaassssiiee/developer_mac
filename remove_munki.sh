#!/bin/bash -v
sudo launchctl unload /Library/LaunchDaemons/com.googlecode.munki.*

sudo rm -rf "/Applications/Utilities/Managed Software Update.app"
#Munki 2 only:
sudo rm -rf "/Applications/Managed Software Center.app"

sudo rm -f /Library/LaunchDaemons/com.googlecode.munki.*
sudo rm -f /Library/LaunchAgents/com.googlecode.munki.*
sudo rm -rf "/Library/Managed Installs"
sudo rm -rf /usr/local/munki
sudo rm /etc/paths.d/munki

sudo pkgutil --forget com.googlecode.munki.admin
sudo pkgutil --forget com.googlecode.munki.app
sudo pkgutil --forget com.googlecode.munki.core
sudo pkgutil --forget com.googlecode.munki.launchd

# reset App Store to pull updates from default Apple servers
sudo defaults delete /Library/Preferences/com.apple.SoftwareUpdate CatalogURL

