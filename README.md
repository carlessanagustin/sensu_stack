# Distributed Sensu monitoring stack via docker-compose

## Architecture

![images/sensu_architecture.png](images/sensu_architecture.png)

## Elements

* Sensu
  * sensu-server (core)
  * sensu-api
  * sensu-client
  * sensu-dashboard (uchiwa)
* Transport
  * RabbitMQ
* Datastore
  * Redis

## Pre-requisites

* docker-engine
* docker-compose
* openssl
* Run `./ssh_tool.sh` to get the SSL certificates

## Run

* Run: `docker-compose up -d`


## Reference Documentation

* Sensu configuration: https://sensuapp.org/docs/latest/reference/configuration.html
* Uchiwa configuration: https://docs.uchiwa.io/getting-started/configuration/#uchiwa-configuration
* Uchiwa docker: https://hub.docker.com/r/uchiwa/uchiwa/

## Sensu Flow

![images/sensu-diagram.gif](images/sensu-diagram.gif)
