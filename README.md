# NOT STABLE - Distributed Sensu monitoring stack via docker-compose

## Architecture

![images/sensu-diagram.gif](images/sensu-diagram.gif)

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

## Reference Documentation

* Sensu configuration: https://sensuapp.org/docs/latest/reference/configuration.html
* Uchiwa configuration: https://docs.uchiwa.io/getting-started/configuration/#uchiwa-configuration
* Uchiwa docker: https://hub.docker.com/r/uchiwa/uchiwa/

# left at...

```shell
.
├── README.md
├── application
│   ├── sensu
│   │   └── Dockerfile
│   ├── sensu-api
│   │   └── Dockerfile
│   ├── sensu-client
│   │   └── Dockerfile
│   ├── sensu-dashboard
│   │   └── Dockerfile
│   └── sensu-server
│       └── Dockerfile
├── configuration
│   ├── rabbitmq
│   │   └── rabbitmq-env.conf
│   ├── redis
│   │   └── redis.conf
│   └── sensu
│       ├── conf.d
│       │   ├── api.json
│       │   ├── client.json
│       │   ├── rabbitmq.json
│       │   ├── redis.json
│       │   └── transport.json
│       ├── config.json
│       ├── dashboard.json
│       ├── extensions
│       └── plugins
├── data
│   ├── rabbitmq
│   └── redis
├── docker-compose.yml
├── images
│   └── sensu-diagram.gif
└── sensu_ssl.sh
```
