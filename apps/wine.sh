#!/bin/bash
# https://wiki.winehq.org/Ubuntu

sudo dpkg --add-architecture i386
sudo add-apt-repository ppa:wine/wine-builds
sudo apt-get update
sudo apt-get install --install-recommends winehq-devel
