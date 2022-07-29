#!/bin/bash

echo "Iniciando o script de instalação do Apache"
apt update && apt upgrade -y && apt install -y apache2 unzip && systemctl start apache2 && systemctl enable apache2
echo "Instalação do Apache concluída com sucesso"

echo "Iniciando download do repositório"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip /tmp
unzip /tmp/main.zip -d /var/www/html
echo "Download do repositório concluído"
echo "!!!!!Script concluído!!!!!"