#!/bin/bash

echo "atualizando o servidor"
apt-get update && apt-get upgrade -y

echo "instalando o apache"
apt-get install apache2 -y

echo "instalando o Unzip"
apt-get install unzip -y

echo "baixando aplicação"
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "descompactando projeto"
unzip /tmp/main.zip

echo "movendo projeto para pasta do apache"
mv /tmp/linux-site-dio-main/* /var/www/html
