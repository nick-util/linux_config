#!/bin/bash


{
  sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
  echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
  sudo apt-get update
  sudo apt-get install -y docker-engine
} || {
    echo "Docker Install failed"
    return 0;
}




{ # try
  curl -L https://github.com/docker/compose/releases/download/1.9.0-rc2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose &&
  sudo chmod +x /usr/local/bin/docker-compose
} || { # catch
  echo "Docker Compose install failed"
}
