FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y graphite-carbon

EXPOSE 2003 2004 7002

CMD /usr/bin/python /usr/bin/carbon-cache --config=/etc/carbon/carbon.conf --pidfile=/var/run/carbon-cache.pid --logdir=/var/log/carbon/ start
