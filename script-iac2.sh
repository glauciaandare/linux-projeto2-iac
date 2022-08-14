#!/bin/bash

echo******Iniciando Deploy******


echo******Atualizando Servidor Linux******

apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo******Baixando e copiando arquivos da aplicação******

cd/tmp
wget https://github.com/glauciaandare/tela_login_instagram/archive/refs/heads/main.zip
unzip main.zip
cd tela_login_instagram-main
cp -R * /var/www/html/


echo******Fim do Deploy******
