#!/bin/bash

docker-compose -p sensu down
docker-compose -p sensu -f docker-compose.client.yml down
sudo rm -Rf data
rm -Rf sensu_ssl_tool
