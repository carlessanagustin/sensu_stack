#!/bin/bash

docker-compose down
docker-compose -f docker-compose.client.yml down

docker volume prune -f
docker network prune -f

sudo rm -Rf data
rm -Rf sensu_ssl_tool
