#!/bin/bash
utils=(unzip p7zip-full git curl htop)



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



