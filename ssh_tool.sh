#!/bin/bash

# https://sensuapp.org/docs/latest/reference/ssl.html
sudo apt-get install openssl

wget http://sensuapp.org/docs/0.29/files/sensu_ssl_tool.tar
tar -xvf sensu_ssl_tool.tar
cd sensu_ssl_tool

./ssl_certs.sh generate
