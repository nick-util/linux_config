#!/bin/bash
# http://askubuntu.com/questions/79280/how-to-install-chrome-browser-properly-via-command-line
# https://ubuntuforums.org/showthread.php?t=1351541

{
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
  sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
  sudo apt-get update
  sudo apt-get install -y --force-yes google-chrome-stable
  echo `date` "Google Chrome install Success!!" >> "install.log"
} || {
  echo `date` "Google Chrome install failed" >> "install.log"
}