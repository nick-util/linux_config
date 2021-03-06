#!/bin/bash


# To Do: Add Settings file!!
# To Do: Automate package manager and plugin installation.

{
  sudo add-apt-repository ppa:webupd8team/sublime-text-3
  sudo apt-get update
  sudo apt-get install sublime-text-installer
  echo `date` "Sublime Text Install Success"  >> "./install.log"
} || {
  echo `date` "Sublime Text Install Failed"  >> "./install.log"
}

