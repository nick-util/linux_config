#!/bin/bash


# Docker
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04

{
  # try
  sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
  echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
  sudo apt-get update -qq
  sudo apt-get install -yqq docker-engine
  echo `date` "Docker Install Success!" >> "install.log"
} || {
  # catch
    echo `date` "Docker Install failed" >> "install.log"
    return 0;
}



# Docker Compose
# https://docs.docker.com/compose/install/
# https://github.com/docker/compose/releases

{
  # try
  curl -L https://github.com/docker/compose/releases/download/1.9.0-rc2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose &&
  sudo chmod +x /usr/local/bin/docker-compose
  echo `date` "Docker Compose Install Success!" >> "install.log"
} || {
  # catch
  echo `date` "Docker Compose install failed" >> "install.log"
}
