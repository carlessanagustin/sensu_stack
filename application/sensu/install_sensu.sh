#!/bin/bash
## for ubuntu xenial 16.04

BUILD_PACKAGES="apt-transport-https apt-utils wget"

apt-get update
apt-get -y install $BUILD_PACKAGES

wget -q https://sensu.global.ssl.fastly.net/apt/pubkey.gpg -O- | apt-key add -
echo "deb  https://sensu.global.ssl.fastly.net/apt xenial main" > /etc/apt/sources.list.d/sensu.list
apt-get update && apt-get -y install sensu

export PATH=$PATH:/opt/sensu/bin

sensu_plugins="ansible,mysql,jenkins,windows,redis,docker,chrony,network-checks,snmp,dns,mailer,uptime-checks,sensu,logs,load-checks,process-checks,rabbitmq,consul,ssl,kubernetes,systemd,haproxy,java,disk-checks,http,xmpp,cgroups,monit,telegram,cassandra,statuspage,etcd,openvpn,sms,hbase,hubot,imap,influxdb,twitter,filesystem-checks,twilio,zendesk,uchiwa,wordpress,ntp,cpu-checks,nginx,supervisor,dhcp,syslog-ng,irc,tomcat,datadog,environmental-checks,fluentd,nrpe,graphite,aws,elasticsearch,logstash,memcached,mongodb,memory-checks,slack,gpg,sftp,ftp,pdns,varnish,github,unicorn,monit,couchbase,apache"
## missing plugins
#sensu-install -P postgres,vault,percona
# more: https://github.com/sensu-plugins
sensu-install -P $sensu_plugins

apt-get remove --purge -y $BUILD_PACKAGES
apt -y autoremove
#apt-get remove --purge -y $BUILD_PACKAGES $(apt-mark showauto)
rm -rf /var/lib/apt/lists/*
