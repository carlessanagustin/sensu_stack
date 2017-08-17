#!/bin/bash

apt-get update
apt-get -y install wget apt-transport-https apt-utils build-essential

CODENAME=$(lsb_release -c | awk '{print $2}')
if $CODENAME == "trusty"; then
  apt-get -y install ruby2.0 ruby2.0-dev ruby-all-dev
elif $CODENAME == "zesty"; then
  apt-get -y install ruby ruby-dev
  # ruby2.3 ruby2.3-dev
else
  echo "UNSUPPORTED UBUNTU VERSION"

fi

wget -q https://sensu.global.ssl.fastly.net/apt/pubkey.gpg -O- | apt-key add -
echo "deb  https://sensu.global.ssl.fastly.net/apt xenial main" > /etc/apt/sources.list.d/sensu.list
apt-get update && apt-get -y install sensu

gem install ffi --platform=ruby
gem install json --platform=ruby
sensu_plugins="sensu-plugin sensu-plugins-docker sensu-plugins-disk-checks sensu-plugins-slack sensu-plugins-network-checks sensu-plugins-kubernetes sensu-plugins-rabbitmq sensu-plugins-http sensu-plugins-mailer sensu-plugins-process-checks sensu-plugins-memory-checks sensu-plugins-ssl sensu-plugins-redis sensu-plugins-filesystem-checks sensu-plugins-cpu-checks sensu-plugins-logs sensu-plugins-load-checks sensu-plugins-jenkins sensu-plugins-sensu sensu-plugins-ansible sensu-plugins-apache sensu-plugins-uchiwa sensu-plugins-twilio sensu-plugins-graphite vmstat"
for plugin in $sensu_plugins; do gem install $plugin; done
