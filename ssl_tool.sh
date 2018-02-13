#!/bin/bash

Country_Name=ES
State_Name=Catalunya
Locality=Barcelona
Organization="Example Co"
Common_Name=www.example.com

# INSTRUCTIONS - https://sensuapp.org/docs/latest/reference/ssl.html
echo "step 1: generating system certificates"
#sudo apt-get y install openssl
rm -f sensu_ssl_tool.tar
wget http://sensuapp.org/docs/1.2/files/sensu_ssl_tool.tar
tar -xvf sensu_ssl_tool.tar
mkdir -p sensu_ssl_tool
cd sensu_ssl_tool
./ssl_certs.sh generate

echo "step 2: generating https certificates"
openssl genrsa -out https.key 2048
openssl req -new -x509 -days 365 \
        -key https.key -out https.pem \
        -subj "/C=$Country_Name/ST=$State_Name/L=$Locality/O=$Organization/CN=$Common_Name"
