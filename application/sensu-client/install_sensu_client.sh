#!/bin/bash
## for sensustack_sensu:latest

BUILD_PACKAGES="apt-transport-https apt-utils wget"

apt-get update
apt-get -y install $BUILD_PACKAGES

sensu_plugins="ansible,mysql,windows,redis,docker,chrony,network-checks,snmp,dns,mailer,uptime-checks,sensu,logs,load-checks,process-checks,rabbitmq,consul,ssl,kubernetes,systemd,haproxy,java,disk-checks,http,xmpp,cgroups,monit,telegram,cassandra,statuspage,etcd,openvpn,sms,hbase,hubot,imap,influxdb,twitter,filesystem-checks,twilio,zendesk,uchiwa,wordpress,ntp,cpu-checks,nginx,supervisor,dhcp,syslog-ng,irc,tomcat,datadog,environmental-checks,fluentd,nrpe,graphite,aws,elasticsearch,logstash,memcached,mongodb,memory-checks,slack,gpg,sftp,ftp,pdns,varnish,github,unicorn,monit,couchbase,apache"
## missing plugins
#sensu-install -P postgres,vault,percona,jenkins
# more: https://github.com/sensu-plugins

sensu-install -P $sensu_plugins
