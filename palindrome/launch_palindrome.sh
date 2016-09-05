#!/bin/sh

if ! type docker-compose 2>/dev/null; then
  echo "Docker-compose not installed, installing now"
  #Digital Ocean doesn't preinstall docer-compose
  apt-get update
  apt-get -y install python-pip;
  pip install docker-compose
fi

if [ ! -d "palindrome-app" ]; then
  git clone https://github.com/joshhsoj1902/palindrome.git palindrome-app
else
  git -C "palindrome-app" fetch --all
  git -C "palindrome-app" reset --hard origin/master
fi

#If the build fails doing the bower install, there is a good chance the system
#does not have enough RAM. This would not be an issue if palindrome was on
#docker-hub
docker-compose -f docker-compose.yml up --build -d
docker-compose -f docker-compose.yml scale app=2