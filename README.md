# Distributed Sensu monitoring stack via docker-compose

![images/sensu-diagram.gif](images/sensu-diagram.gif)

## Architecture

* Sensu core
  * Server
  * API
* Sensu GUI
  * Uchiwa
* Transport
  * RabbitMQ
* Datastore
  * Redis

* Sensu client
  * Agent
