#!/bin/bash
# http://askubuntu.com/questions/762855/how-to-install-brackets-io-from-the-command-line
{
  sudo add-apt-repository -y ppa:webupd8team/brackets
  echo "Updating apt repo..."
  sudo apt-get update -qq
  echo "Installing Brackets"
  sudo apt-get install --force-yes -yqq brackets
  echo `date` "Brackets Installed Successfully" >> "install.log"
} || {
  echo `date` "Brackets install failed!" >> "install.log"
}