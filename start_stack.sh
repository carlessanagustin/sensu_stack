#!/bin/bash

sudo apt-get install -y wget

wget https://bitbucket.org/!api/2.0/snippets/worldsensing_traffic/4RR5Ge/acaad7f93b2b41983a943188ef249f2d0380b6d9/files/ssl_tool.sh
./ssl_tool.sh
docker-compose up -d
