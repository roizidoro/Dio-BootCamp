#!/bin/bash

echo "Baixando possíveis atualizações..."
apt-get update

echo "Atualizando o servidor..."
apt-get upgrade -y

echo "Instalando o Servidor WEB - Apache2"
apt-get install apache2 -y

echo "Instalando o Unzip"
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação WEB..."

cd /tmp

echo "Fazendo download dos Arquivos..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o Arquivo ZIP"
unzip main.zip

echo "Acessando o diretorio dos arquivos descompactados e copiando para o diretorio do Apache2"
cd linux-site-dio-main
cp -R * /var/www/html/
