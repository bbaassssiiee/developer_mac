#!/bin/bash -v
# TODO: add these to the Managed Software Center

for f in `ls /Library/Caches/Homebrew/*.dmg`
do 
    /usr/local/munki/munkiimport -n --subdirectory apps -c testing $f
done
