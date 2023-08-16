#!/bin/bash

apt-get update
apt-get upgrade -y

apt-get install apache2
apt-get install ufw
sudo ufw app list
sudo ufw allow in "Apache"
sudo ufw status

sudo apt-get install iproute2
ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'


apt-get install php



sudo apt install mysql-server
sudo apt install mariadb-server
sudo mysql_secure_installation
sudo apt install php libapache2-mod-php php-mysql

apt-get intall zip -y
wget https://wordpress.org/latest.zip
unzip latest.zip
rm -rf latest


# Variables
db_name="wordpress"
mysql_user="root"
mysql_password="123"

# Iniciar sesión en MySQL y crear la base de datos
mysql -u $mysql_user -p$mysql_password << EOF
CREATE DATABASE $db_name;
EOF

echo "Base de datos '$db_name' creada correctamente."
