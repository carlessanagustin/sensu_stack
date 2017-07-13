#!/bin/bash

apt-get update && \
apt-get -y install wget apt-transport-https apt-utils && \
apt-get -y install ruby ruby-dev build-essential && \
wget -q https://sensu.global.ssl.fastly.net/apt/pubkey.gpg -O- | apt-key add - && \
echo "deb  https://sensu.global.ssl.fastly.net/apt xenial main" > /etc/apt/sources.list.d/sensu.list && \
apt-get update && apt-get -y install sensu && \
sensu_plugins="sensu-plugin sensu-plugins-docker sensu-plugins-disk-checks sensu-plugins-slack sensu-plugins-network-checks sensu-plugins-kubernetes sensu-plugins-rabbitmq sensu-plugins-http sensu-plugins-mailer sensu-plugins-process-checks sensu-plugins-memory-checks sensu-plugins-ssl sensu-plugins-redis sensu-plugins-filesystem-checks sensu-plugins-cpu-checks sensu-plugins-logs sensu-plugins-load-checks sensu-plugins-jenkins sensu-plugins-sensu sensu-plugins-ansible sensu-plugins-apache sensu-plugins-uchiwa sensu-plugins-twilio sensu-plugins-graphite" && \
for plugin in $sensu_plugins; do gem install $plugin; done && \
gem install vmstat
