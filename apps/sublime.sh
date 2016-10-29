#!/bin/bash

{
  sudo add-apt-repository ppa:webupd8team/sublime-text-3
  sudo apt-get update
  sudo apt-get install sublime-text-installer
} || {
  echo `date` "Sublime Text Install Failed"  >> "./install.log"
}