#!/bin/bash
utils=(unzip p7zip-full git curl htop wget ccrypt build-essential libxml2 libxml2-dev 
libcurl4-openssl-dev libmcrypt-dev libreadline-dev lm-sensors hddtemp psensor unity-tweak-tool)



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



