#!/bin/bash

# Targeted apps bundled in the apt repositories.
# These may be large in size!!


apps=(vlc gimp)

# loop through utils
for i in ${apps[@]}
do
  # test for package presence
  PKG_OK=$(dpkg-query -W --showformat='${Status}\n' ${i}|grep "install ok installed")
  if [ "" == "$PKG_OK" ]; then
    sudo apt-get --force-yes --yes install ${i}
  fi
done