FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y graphite-web apache2 libapache2-mod-wsgi && \
    cp /usr/share/graphite-web/apache2-graphite.conf /etc/apache2/sites-enabled/graphite.conf

#ENV APACHE_RUN_USER=www-data
#ENV APACHE_RUN_GROUP=www-data
#ENV APACHE_PID_FILE=/var/run/apache2/apache2.pid
#ENV APACHE_RUN_DIR=/var/run/apache2
#ENV APACHE_LOCK_DIR=/var/lock/apache2
#ENV APACHE_LOG_DIR=/var/log/apache2

EXPOSE 80 443

#CMD service apache2 start
#CMD /usr/sbin/apache2 -k start
CMD /bin/bash -c "source /etc/apache2/envvars && exec /usr/sbin/apache2 -DFOREGROUND"
