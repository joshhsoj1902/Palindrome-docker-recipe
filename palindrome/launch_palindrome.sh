#!/bin/sh

#Digital Ocean doesn't preinstall docer-compose
apt-get update
apt-get -y install python-pip;
pip install docker-compose

if [ ! -d "palindrome-app" ]; then
  git clone https://github.com/joshhsoj1902/palindrome.git palindrome-app
else
  git -C "palindrome-app" fetch 
fi

docker-compose -f docker-compose.yml up -d