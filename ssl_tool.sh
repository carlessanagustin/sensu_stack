#!/bin/bash

Country_Name=ES
State_Name=Catalunya
Locality=Barcelona
Organization="Example Co"
Common_Name=www.example.com

# https://sensuapp.org/docs/latest/reference/ssl.html
sudo apt-get y install openssl

echo "step 1: generating system certificates"
#wget http://sensuapp.org/docs/0.29/files/sensu_ssl_tool.tar
tar -xvf sensu_ssl_tool.tar
cd sensu_ssl_tool
./ssl_certs.sh generate

echo "step 2: generating https certificates"
openssl genrsa -out https.key 2048
openssl req -new -x509 -days 365 \
        -key https.key -out https.pem \
        -subj "/C=$Country_Name/ST=$State_Name/L=$Locality/O=$Organization/CN=$Common_Name"
