#!/bin/bash


DATE_LOG=`date "+%Y%m%d-%H%M%S"` #add %3N as we want millisecond too


Titulo()
{
echo -e "\033[34m########################################################################################################   \033[m" 
echo -e "\033[34m#                                                                                                      #   \033[m" 
echo -e "\033[34m# Instalador ide.goorm.io                                                                              #   \033[m" 
echo -e "\033[34m#                                                                                                      #   \033[m" 
echo -e "\033[34m########################################################################################################   \033[m" 

}

Process()
{



if [ $2 = 1 ]; then

	a=`expr $a + 1`

	echo ""
	echo ""
	echo -e "\033[35m--> \033[m \033[32m Process --- $a --- \033[m \033[35m <-- \033[m " 
	echo ""
	echo -e "\033[34m--> \033[m \033[32m $1 \033[m   \033[34m <-- \033[m" 
	echo ""
	sleep 1
	echo -e "\033[35m--> \033[m \033[35m $3 \033[m   \033[35m <-- \033[m"
	
	
	echo " "
	DATE_WITH_TIME=`date "+%Y%m%d-%H%M%S"` #add %3N as we want millisecond too
	echo -e "\033[35m--> \033[m \033[33m $DATE_WITH_TIME \033[m   \033[35m <-- \033[m"
	echo -e "\033[33m  \033[m"  
	sleep 1
	echo " "

	echo "------------------------------------------------------------------------------------------------------------------------------------------------" >> "$DATE_LOG"_log.txt
	echo "Proceso			:	$a" >> "$DATE_LOG"_log.txt
	echo "Tipo Proceso	:	$3" >> "$DATE_LOG"_log.txt
	echo "Instruccion		:	$1" >> "$DATE_LOG"_log.txt
	echo "Tiempo Inicio	:	$DATE_WITH_TIME" >> "$DATE_LOG"_log.txt

else
	echo "Incorrecto"
	sleep 1
	exit
fi



#a=`expr $a + 1`

#echo ""
#echo ""
#echo -e "\033[35m--> \033[m \033[32m Process --- $a --- \033[m   \033[33m <--0 \033[m" 
#echo ""
#echo -e "\033[34m--> \033[m \033[32m $1 \033[m   \033[34m <-- \033[m" 
#echo 
#sleep 1




}



bar()
{

echo ""

case $1 in
   
10) echo -e "\033[31m#                  (10%)\033[m"
sleep 1
;;
20) echo -e "\033[31m##                 (20%)\033[m"
sleep 1
;;
30) echo -e "\033[31m###                (30%)\033[m"
sleep 1
;;
40) echo -e "\033[31m####               (40%)\033[m"
sleep 1
;;
50) echo -e "\033[33m#####              (50%)\033[m"
sleep 1
;;
60) echo -e "\033[33m######             (60%)\033[m"
sleep 1
;;
70) echo -e "\033[33m#######            (70%)\033[m"
sleep 1
;;
80) echo -e "\033[33m########           (80%)\033[m"
sleep 1
;;
90) echo -e "\033[33m#########          (90%)\033[m"
sleep 1
;;
100) echo -e "\033[32m##########         (100%)\033[m"
sleep 1
;;
   
esac

clear
DATE_WITH_TIME=`date "+%Y%m%d-%H%M%S"` #add %3N as we want millisecond too
echo "Tiempo Fin		:	$DATE_WITH_TIME" >> "$DATE_LOG"_log.txt

 
}



#echo -e "\033[0m" 

#echo -e "\033[31m#### Red    \033[m"
#echo -e "\033[32m#### Green  \033[m" 
#echo -e "\033[33m#### Yellow \033[m" 
#echo -e "\033[34m#### Blue   \033[m" 
#echo -e "\033[35m#### Purple \033[m" 
#echo -e "\033[36m#### Cyan   \033[m" 
#echo -e "\033[37m#### white  \033[m" 



#Titulo

clear

###############################################################################################################################################################
# Instalacion Preliminar                                                                                                                                      #
###############################################################################################################################################################


###############################################################################################################################################################
echo ""
Process "sudo apt update -y" 1 "Instalacion Preliminar"
echo ""
sudo apt update -y
bar 10

###############################################################################################################################################################
echo ""
Process "sudo apt upgrade -y" 1 "Instalacion Preliminar"
echo ""
sudo apt upgrade -y
bar 10


###############################################################################################################################################################

Process "wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add -" 1 "Instalacion Preliminar"
echo -e "\033[34m--> \033[m \033[32m wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add - \033[m   \033[34m <-- \033[m" 
echo ""
wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add -
bar 10

###############################################################################################################################################################
echo ""
Process "echo \"deb http://packages.cloudfoundry.org/debian stable main\" > /etc/apt/sources.list.d/cloudfoundry-cli.list" 1 "Instalacion Preliminar"
echo ""
echo "deb http://packages.cloudfoundry.org/debian stable main" > /etc/apt/sources.list.d/cloudfoundry-cli.list
bar 10

###############################################################################################################################################################
echo ""
Process "apt-get update -y" 1 "Instalacion Preliminar"
echo ""
apt-get update -y
bar 10

###############################################################################################################################################################
echo ""
Process "apt-get install -y cf-cli" 1 "Instalacion Preliminar"
echo ""
apt-get install -y cf-cli
bar 10

###############################################################################################################################################################
echo ""
Process "wget https://cli-assets.heroku.com/apt/release.key" 1 "Instalacion Preliminar"
echo ""
wget https://cli-assets.heroku.com/apt/release.key
bar 10

###############################################################################################################################################################
echo ""
Process "gpg --list-packets release.key" 1 "Instalacion Preliminar"
echo ""
gpg --list-packets release.key
bar 10

###############################################################################################################################################################
echo ""
Process "curl https://cli-assets.heroku.com/install.sh | sh" 1 "Instalacion Preliminar"
echo ""
curl https://cli-assets.heroku.com/install.sh | sh
bar 10

###############################################################################################################################################################
echo ""
Process "curl -fsSL https://cli-assets.heroku.com/apt/release.key | sudo gpg --dearmor -o /usr/share/keyrings/heroku-archive-keyring.gpg" 1 "Instalacion Preliminar"
echo ""
curl -fsSL https://cli-assets.heroku.com/apt/release.key | sudo gpg --dearmor -o /usr/share/keyrings/heroku-archive-keyring.gpg 
bar 10

###############################################################################################################################################################
echo ""
Process "sudo add-apt-repository -r \"deb https://cli-assets.heroku.com/branches/stable/apt ./" 1 "Instalacion Preliminar"
echo ""
sudo add-apt-repository -r "deb https://cli-assets.heroku.com/branches/stable/apt ./"
bar 10

###############################################################################################################################################################
echo ""
Process "sudo apt update -y" 1 "Instalacion Preliminar"
echo ""
sudo apt update -y
bar 10

###############################################################################################################################################################
echo ""
Process "sudo apt upgrade -y" 1 "Instalacion Preliminar"
echo ""
sudo apt upgrade -y
bar 10


###############################################################################################################################################################
# Instalacion LAMP                                                                                                                                            #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt install apache2 -y" 1 "Instalacion LAMP"
echo ""
sudo apt install apache2 -y 
bar 20

###############################################################################################################################################################
echo ""
Process "sudo apt install mysql-server -y" 1 "Instalacion LAMP"
echo ""
sudo apt install mysql-server -y
bar 20


###############################################################################################################################################################
echo ""
Process "sudo apt install php -y" 1 "Instalacion LAMP"
echo ""
sudo apt install php7.27.2 -y
bar 20










#sudo apt-get install php-xsl -y
#sudo apt-get install php7.4-xsl -y
##############################################














#sudo apt-get php-pgsql -y

#sudo apt install 
#php8.1 php8.1-cli 
#php8.1-common 
#php8.1-mysql 
#php8.1-zip 
#php8.1-curl 
#php8.1-gd 
#php8.1-mbstring 
#php8.1-xml 
#php8.1-bcmath 
#php8.1-fpm 
#php8.1-phpdbg 
#php8.1-cgi 
#libphp8.1-embed 
#libapache2-mod-php8.1



#https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-20-04

#apt-get install tmux -y
##############################################
#apt-get install mc -y
##############################################




#apt-get install vim 
##############################################
#sudo apt-get install packname
# chown -R man: /var/cache/man/
#  chmod -R 755 /var/cache/man/
#  apt install composer -y
  
  
#  composer require consolidation/robo:^3
#  composer update
#  composer config cache-files-dir
#  composer init -n --name symfony-mailer-test
#  composer require symfony/mailer
  
  #https://github.com/composer/composer/issues/9097
  


#curl -sS https://getcomposer.org/installer | php
#sudo mv composer.phar /usr/bin/composer
#composer --version


  
  
#sudo apt install ufw -y
#sudo apt install apache2 -y 
#sudo ufw app list
#sudo ufw allow in "Apache"
#sudo ufw status
