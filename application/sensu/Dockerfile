FROM ubuntu:16.04
# https://sensuapp.org/docs/latest/platforms/sensu-on-ubuntu-debian.html#operating-sensu
RUN apt-get update && \
    apt-get -y install wget apt-transport-https && \
    apt-get -y install ruby ruby-dev build-essential && \
    wget -q https://sensu.global.ssl.fastly.net/apt/pubkey.gpg -O- | apt-key add - && \
    echo "deb  https://sensu.global.ssl.fastly.net/apt xenial main" > /etc/apt/sources.list.d/sensu.list && \
    apt-get update && apt-get -y install sensu

WORKDIR /opt/sensu/bin
