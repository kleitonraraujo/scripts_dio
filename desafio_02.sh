#!/bin/bash

echo "Alualizar o servidor"
apt-get update
apt-get upgrade -y

echo "Instalação do Apache"
apt-get install apache2 -y

echo "Instalação do unzip"
apt-get install unzip -y

echo "Criando uma pasta temporaria"
mkdir /tmp
cd /tmp

echo "Baixando o e copiando os arquivos da aplicação do apache"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
