#!/bin/bash
utils=(unzip p7zip-full git curl htop wget ccrypt build-essential libxml2 libxml2-dev 
libcurl4-openssl-dev libmcrypt-dev libreadline-dev libffi-dev lm-sensors hddtemp psensor unity-tweak-tool python-pip)



# loop through utils
for i in ${utils[@]}
do
  # test for package presence
  PKG_OK=$(dpkg-query -W --showformat='${Status}\n' ${i}|grep "install ok installed")
  if [ "" == "$PKG_OK" ]; then
    echo "Installing ${i}"
    sudo apt-get --force-yes -yqq install ${i}
  fi
done


  git config --global user.email "NickKiermaier@gmail.com"
  git config --global user.name "NickKiermaier"

# rbenv-build suggested build environment
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
