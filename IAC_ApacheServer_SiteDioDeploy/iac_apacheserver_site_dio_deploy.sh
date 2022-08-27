#!/bin/bash

echo "Atualização, instalação de aplicações e deploy de código de site"

echo "Atualização e instalação de Apache e Unzip no servidor: "

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando arquivos do repositório e copiando para diretório de utilização"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Removendo o código do diretório /tmp"

cd /tmp
rm main.zip

echo "Fine della missione"