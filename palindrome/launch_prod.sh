#!/bin/sh

#Digital Ocean doesn't preinstall docker-compose
apt-get update;
apt-get -y install python-pip;
pip install docker-compose;

docker-compose -f docker-compose.yml up -d;