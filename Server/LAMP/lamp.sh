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
sudo apt install php -y
bar 20


###############################################################################################################################################################
# Instalacion Componentes LAMP                                                                                                                                #
###############################################################################################################################################################
###############################################################################################################################################################
# Instalacion php-bcmath                                                                                                                                      #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt install php-bcmath -y " 1 "Componentes LAMP php-bcmath"
echo ""
sudo apt install php-bcmath -y
bar 30


###############################################################################################################################################################
echo ""
Process "sudo apt install php7.1-bcmath -y " 1 "Componentes LAMP php-bcmath"
echo ""
sudo apt install php7.1-bcmath -y
bar 30


###############################################################################################################################################################
echo ""
Process "sudo apt install php7.2-bcmath -y" 1 "Componentes LAMP php-bcmath"
echo ""
sudo apt install php7.2-bcmath -y
bar 30


###############################################################################################################################################################
echo ""
Process "sudo apt install php7.3-bcmath -y" 1 "Componentes LAMP php-bcmath"
echo ""
sudo apt install php7.3-bcmath -y
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.4-bcmath -y " 1 "Componentes LAMP php-bcmath"
echo ""
sudo apt install php7.4-bcmath -y
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt install php8.0-bcmath -y " 1 "Componentes LAMP php-bcmath"
echo ""
sudo apt install php8.0-bcmath -y
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt install php8.1-bcmath -y " 1 "Componentes LAMP php-bcmath"
echo ""
sudo apt install php8.1-bcmath -y
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt install php-common -y " 1 "Componentes LAMP php-common"
echo ""
sudo apt install php-common -y 
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.1-common -y " 1 "Componentes LAMP php-common"
echo ""
sudo apt install php7.1-common -y 
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.2-common -y " 1 "Componentes LAMP php-common"
echo ""
sudo apt install php7.2-common -y 
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.3-common -y " 1 "Componentes LAMP php-common"
echo ""
sudo apt install php7.3-common -y 
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.4-common -y " 1 "Componentes LAMP php-common"
echo ""
sudo apt install php7.4-common -y 
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt install php8.0-common -y " 1 "Componentes LAMP php-common"
echo ""
sudo apt install php8.0-common -y 
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt install php8.1-common -y " 1 "Componentes LAMP php-common"
echo ""
sudo apt install php8.1-common -y 
bar 30


###############################################################################################################################################################
# Instalacion php-curl                                                                                                                                       #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt install php-curl -y " 1 "Componentes LAMP php-curl"
echo ""
sudo apt install php-curl -y
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.1-curl -y " 1 "Componentes LAMP php-curl"
echo ""
sudo apt install php7.1-curl -y
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.2-curl -y " 1 "Componentes LAMP php-curl"
echo ""
sudo apt install php7.2-curl -y
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.3-curl -y " 1 "Componentes LAMP php-curl"
echo ""
sudo apt install php7.3-curl -y
bar 40

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.4-curl -y " 1 "Componentes LAMP php-curl"
echo ""
sudo apt install php7.4-curl -y
bar 40

###############################################################################################################################################################
echo ""
Process "sudo apt install php8.0-curl -y " 1 "Componentes LAMP php-curl"
echo ""
sudo apt install php8.0-curl -y
bar 40

###############################################################################################################################################################
echo ""
Process "sudo apt install php8.1-curl -y " 1 "Componentes LAMP php-curl"
echo ""
sudo apt install php8.1-curl -y
bar 30


###############################################################################################################################################################
# Instalacion php-json                                                                                                                                       #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt install php-json -y " 1 "Componentes LAMP php-json"
echo ""
sudo apt install php-json -y
bar 40

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.1-json -y " 1 "Componentes LAMP php-json"
echo ""
sudo apt install php7.1-json -y
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.2-json -y " 1 "Componentes LAMP php-json"
echo ""
sudo apt install php7.2-json -y
bar 40

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.3-json -y " 1 "Componentes LAMP php-json"
echo ""
sudo apt install php7.3-json -y
bar 40

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.4-json -y " 1 "Componentes LAMP php-json"
echo ""
sudo apt install php7.4-json -y
bar 50

###############################################################################################################################################################
echo ""
Process "sudo apt install php8.0-json -y " 1 "Componentes LAMP php-json"
echo ""
sudo apt install php8.0-json -y
bar 50

###############################################################################################################################################################
echo ""
Process "sudo apt install php8.1-json -y " 1 "Componentes LAMP php-json"
echo ""
sudo apt install php8.1-json -y
bar 50


###############################################################################################################################################################
# Instalacion php-mbstring                                                                                                                                       #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt install php-mbstring -y " 1 "Componentes LAMP php-mbstring"
echo ""
sudo apt install php-mbstring -y
bar 50

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.1-mbstring -y " 1 "Componentes LAMP php-mbstring"
echo ""
sudo apt install php7.1-mbstring -y
bar 50

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.2-mbstring -y " 1 "Componentes LAMP php-mbstring"
echo ""
sudo apt install php7.2-mbstring -y
bar 50


###############################################################################################################################################################
echo ""
Process "sudo apt install php7.3-mbstring -y " 1 "Componentes LAMP php-mbstring"
echo ""
sudo apt install php7.3-mbstring -y
bar 50

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.4-mbstring -y " 1 "Componentes LAMP php-mbstring"
echo ""
sudo apt install php7.4-mbstring -y
bar 50

###############################################################################################################################################################
echo ""
Process "sudo apt install php8.0-mbstring -y " 1 "Componentes LAMP php-mbstring"
echo ""
sudo apt install php8.0-mbstring -y
bar 60

###############################################################################################################################################################
echo ""
Process "sudo apt install php8.1-mbstring -y " 1 "Componentes LAMP php-mbstring"
echo ""
sudo apt install php8.1-mbstring -y
bar 60


###############################################################################################################################################################
# Instalacion php-xml                                                                                                                                       #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt install php-xml " 1 "Componentes LAMP php-xml"
echo ""
sudo apt install php-xml
bar 60

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.1-xml " 1 "Componentes LAMP php7.1-xml"
echo ""
sudo apt install php7.1-xml
bar 60


###############################################################################################################################################################
echo ""
Process "sudo apt install php7.2-xml " 1 "Componentes LAMP php7.2-xml"
echo ""
sudo apt install php7.2-xml
bar 60

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.3-xml " 1 "Componentes LAMP php7.3-xml"
echo ""
sudo apt install php7.3-xml
bar 60

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.4-xml " 1 "Componentes LAMP php7.4-xml"
echo ""
sudo apt install php7.4-xml
bar 60

###############################################################################################################################################################
echo ""
Process "sudo apt install php8.0-xml " 1 "Componentes LAMP php8.0-xml"
echo ""
sudo apt install php8.0-xml
bar 60

###############################################################################################################################################################
echo ""
Process "sudo apt install php8.1-xml " 1 "Componentes LAMP php8.1-xml"
echo ""
sudo apt install php8.1-xml
bar 60

###############################################################################################################################################################
# Instalacion php-zip                                                                                                                                       #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt install php-zip -y" 1 "Componentes LAMP php-zip"
echo ""
sudo apt install php-zip -y
bar 60


###############################################################################################################################################################
echo ""
Process "sudo apt install php7.1-zip -y" 1 "Componentes LAMP php7.1-zip"
echo ""
sudo apt install php7.1-zip -y
bar 60

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.2-zip -y" 1 "Componentes LAMP php7.2-zip"
echo ""
sudo apt install php7.2-zip -y
bar 60

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.3-zip -y" 1 "Componentes LAMP php7.3-zip"
echo ""
sudo apt install php7.3-zip -y
bar 60

###############################################################################################################################################################
echo ""
Process "sudo apt install php7.4-zip -y" 1 "Componentes LAMP php7.4-zip"
echo ""
sudo apt install php7.4-zip -y
bar 60


###############################################################################################################################################################
echo ""
Process "sudo apt install php8.0-zip -y" 1 "Componentes LAMP php8.0-zip"
echo ""
sudo apt install php8.0-zip -y
bar 60

###############################################################################################################################################################
echo ""
Process "sudo apt install php8.1-zip -y" 1 "Componentes LAMP php8.1-zip"
echo ""
sudo apt install php8.1-zip -y
bar 60



###############################################################################################################################################################
# Instalacion php-cli                                                                                                                                       #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt install php-cli -y" 1 "Componentes LAMP php-cli"
echo ""
sudo apt install php-cli -y
bar 60


###############################################################################################################################################################
echo ""
Process "sudo apt install php7.1-cli -y" 1 "Componentes LAMP php7.1-cli"
echo ""
sudo apt install php7.1-cli -y
bar 60


###############################################################################################################################################################
echo ""
Process "sudo apt install php7.2-cli -y" 1 "Componentes LAMP php7.2-cli"
echo ""
sudo apt install php7.2-cli -y
bar 60


###############################################################################################################################################################
echo ""
Process "sudo apt install php7.3-cli -y" 1 "Componentes LAMP php7.3-cli"
echo ""
sudo apt install php7.3-cli -y
bar 60


###############################################################################################################################################################
echo ""
Process "sudo apt install php7.4-cli -y" 1 "Componentes LAMP php7.4-cli"
echo ""
sudo apt install php7.4-cli -y
bar 60


###############################################################################################################################################################
echo ""
Process "sudo apt install php8.0-cli -y" 1 "Componentes LAMP php8.0-cli"
echo ""
sudo apt install php8.0-cli -y
bar 60



###############################################################################################################################################################
echo ""
Process "sudo apt install php8.1-cli -y" 1 "Componentes LAMP php8.1-cli"
echo ""
sudo apt install php8.1-cli -y
bar 60


###############################################################################################################################################################
# Instalacion php-gd                                                                                                                                       #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php-gd -y" 1 "Componentes LAMP php-gd"
echo ""
sudo apt-get install php-gd -y
bar 60

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.1-gd -y" 1 "Componentes LAMP php7.1-gd"
echo ""
sudo apt-get install php7.1-gd -y
bar 60

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-gd -y" 1 "Componentes LAMP php7.2-gd"
echo ""
sudo apt-get install php7.2-gd -y
bar 60

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.3-gd -y" 1 "Componentes LAMP php7.3-gd"
echo ""
sudo apt-get install php7.3-gd -y
bar 60

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.4-gd -y" 1 "Componentes LAMP php7.4-gd"
echo ""
sudo apt-get install php7.4-gd -y
bar 60

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php8.0-gd -y" 1 "Componentes LAMP php8.0-gd"
echo ""
sudo apt-get install php8.0-gd -y
bar 60


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php8.1-gd -y" 1 "Componentes LAMP php8.1-gd"
echo ""
sudo apt-get install php8.1-gd -y
bar 60




###############################################################################################################################################################
# Instalacion php-phpdbg                                                                                                                                      #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php-phpdbg -y" 1 "Componentes LAMP php-phpdbg "
echo ""
sudo apt-get install php-phpdbg -y
bar 70



###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.1-phpdbg -y" 1 "Componentes LAMP php7.1-phpdbg "
echo ""
sudo apt-get install php7.1-phpdbg -y
bar 70


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-phpdbg -y" 1 "Componentes LAMP php7.2-phpdbg "
echo ""
sudo apt-get install php7.2-phpdbg -y
bar 30


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.3-phpdbg -y" 1 "Componentes LAMP php7.3-phpdbg "
echo ""
sudo apt-get install php7.3-phpdbg -y
bar 70


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.4-phpdbg -y" 1 "Componentes LAMP php7.4-phpdbg "
echo ""
sudo apt-get install php7.4-phpdbg -y
bar 70

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php8.0-phpdbg -y" 1 "Componentes LAMP php8.0-phpdbg "
echo ""
sudo apt-get install php8.0-phpdbg -y
bar 70

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php8.1-phpdbg -y" 1 "Componentes LAMP php8.1-phpdbg "
echo ""
sudo apt-get install php8.1-phpdbg -y
bar 70



###############################################################################################################################################################
# Instalacion libapache2-mod-php                                                                                                                                      #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt-get install libapache2-mod-php -y" 1 "Componentes LAMP libapache2-mod-php  "
echo ""
sudo apt-get install libapache2-mod-php -y
bar 70


###############################################################################################################################################################
echo ""
Process "sudo apt-get install libapache2-mod-php7.1 -y" 1 "Componentes LAMP libapache2-mod-php7.1 "
echo ""
sudo apt-get install libapache2-mod-php7.1 -y
bar 70

###############################################################################################################################################################
echo ""
Process "sudo apt-get install libapache2-mod-php7.2 -y" 1 "Componentes LAMP libapache2-mod-php7.2 "
echo ""
sudo apt-get install libapache2-mod-php7.2 -y
bar 70

###############################################################################################################################################################
echo ""
Process "sudo apt-get install libapache2-mod-php7.3 -y" 1 "Componentes LAMP libapache2-mod-php7.3 "
echo ""
sudo apt-get install libapache2-mod-php7.3 -y
bar 70


###############################################################################################################################################################
echo ""
Process "sudo apt-get install libapache2-mod-php7.4 -y" 1 "Componentes LAMP libapache2-mod-php7.4 "
echo ""
sudo apt-get install libapache2-mod-php7.4 -y
bar 70


###############################################################################################################################################################
echo ""
Process "sudo apt-get install libapache2-mod-php8.0 -y" 1 "Componentes LAMP libapache2-mod-php8.0 "
echo ""
sudo apt-get install libapache2-mod-php8.0 -y
bar 70


###############################################################################################################################################################
echo ""
Process "sudo apt-get install libapache2-mod-php8.1 -y" 1 "Componentes LAMP libapache2-mod-php8.1 "
echo ""
sudo apt-get install libapache2-mod-php8.1 -y
bar 70


###############################################################################################################################################################
# Instalacion libphp-embed                                                                                                                                      #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt-get install libphp-embed  -y" 1 "Componentes LAMP libphp-embed   "
echo ""
apt-get install libphp-embed  -y
bar 70




###############################################################################################################################################################
echo ""
Process "sudo apt-get install libphp7.1-embed  -y" 1 "Componentes LAMP libphp7.1-embed   "
echo ""
apt-get install libphp7.1-embed  -y
bar 70


###############################################################################################################################################################
echo ""
Process "sudo apt-get install libphp7.2-embed  -y" 1 "Componentes LAMP libphp7.2-embed   "
echo ""
apt-get install libphp7.2-embed  -y
bar 70


###############################################################################################################################################################
echo ""
Process "sudo apt-get install libphp7.3-embed  -y" 1 "Componentes LAMP libphp7.3-embed   "
echo ""
apt-get install libphp7.3-embed  -y
bar 70



###############################################################################################################################################################
echo ""
Process "sudo apt-get install libphp7.4-embed  -y" 1 "Componentes LAMP libphp7.4-embed   "
echo ""
apt-get install libphp7.4-embed  -y
bar 70


###############################################################################################################################################################
echo ""
Process "sudo apt-get install libphp8.0-embed  -y" 1 "Componentes LAMP libphp8.0-embed   "
echo ""
apt-get install libphp8.0-embed  -y
bar 70

###############################################################################################################################################################
echo ""
Process "sudo apt-get install libphp8.1-embed  -y" 1 "Componentes LAMP libphp8.1-embed   "
echo ""
apt-get install libphp8.1-embed  -y
bar 70



###############################################################################################################################################################
# Instalacion php-fpm                                                                                                                                     #
###############################################################################################################################################################


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php-fpm -y" 1 "Componentes LAMP php-fpm "
echo ""
sudo apt-get install php-fpm -y
bar 70



###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.1-fpm -y" 1 "Componentes LAMP php7.1-fpm "
echo ""
sudo apt-get install php7.1-fpm -y
bar 70



###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-fpm -y" 1 "Componentes LAMP php7.2-fpm "
echo ""
sudo apt-get install php7.2-fpm -y
bar 70


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.3-fpm -y" 1 "Componentes LAMP php7.3-fpm "
echo ""
sudo apt-get install php7.3-fpm -y
bar 70


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.4-fpm -y" 1 "Componentes LAMP php7.4-fpm "
echo ""
sudo apt-get install php7.4-fpm -y
bar 70


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php8.0-fpm -y" 1 "Componentes LAMP php8.0-fpm "
echo ""
sudo apt-get install php8.0-fpm -y
bar 70

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php8.1-fpm -y" 1 "Componentes LAMP php8.1-fpm "
echo ""
sudo apt-get install php8.1-fpm -y
bar 70




###############################################################################################################################################################
# Preparacion Instalacion                                                                                                                                     #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "curl https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -" 1 "https://cli-assets.heroku.com/apt/release.key "
echo ""
curl https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
bar 80


###############################################################################################################################################################
echo ""
Process "rm -rf release.key" 1 "rm -rf release.key "
echo ""
rm -rf release.key
bar 80

###############################################################################################################################################################
echo ""
Process "wget https://cli-assets.heroku.com/apt/release.key" 1 "wget https://cli-assets.heroku.com/apt/release.key "
echo ""
wget https://cli-assets.heroku.com/apt/release.key
bar 80

###############################################################################################################################################################
echo ""
Process "gpg --list-packets release.key" 1 "gpg --list-packets release.key "
echo ""
gpg --list-packets release.key
bar 80

###############################################################################################################################################################
echo ""
Process "deb [signed-by=/usr/share/keyrings/heroku.com.asc] https://cli-assets.heroku.com/apt ./" 1 "deb [signed-by=/usr/share/keyrings/heroku.com.asc] https://cli-assets.heroku.com/apt ./"
echo ""
echo "deb [signed-by=/usr/share/keyrings/heroku.com.asc] https://cli-assets.heroku.com/apt ./" | sudo tee /etc/apt/sources.list.d/heroku.list
bar 80

###############################################################################################################################################################
echo ""
Process "cat release.key | gpg --dearmor | sudo dd of=/usr/share/keyrings/heroku-archive-keyring.gpg" 1 "cat release.key | gpg --dearmor | sudo dd of=/usr/share/keyrings/heroku-archive-keyring.gpg"
echo ""
echo "deb [signed-by=/usr/share/keyrings/heroku.com.asc] https://cli-assets.heroku.com/apt ./" | sudo tee /etc/apt/sources.list.d/heroku.list
bar 80

###############################################################################################################################################################
echo ""
Process "cat release.key | gpg --dearmor | sudo dd of=/usr/share/keyrings/heroku-archive-keyring.gpg" 1 "cat release.key | gpg --dearmor | sudo dd of=/usr/share/keyrings/heroku-archive-keyring.gpg"
echo ""
cat release.key | gpg --dearmor | sudo dd of=/usr/share/keyrings/heroku-archive-keyring.gpg
bar 80

###############################################################################################################################################################
echo ""
Process "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/heroku-archive-keyring.gpg] https://cli-assets.heroku.com/apt ./" 1 "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/heroku-archive-keyring.gpg] https://cli-assets.heroku.com/apt ./"
echo ""
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/heroku-archive-keyring.gpg] https://cli-assets.heroku.com/apt ./" | sudo tee /etc/apt/sources.list.d/heroku.list
bar 80

###############################################################################################################################################################
echo ""
Process "curl https://cli-assets.heroku.com/install.sh | sh" 1 "curl https://cli-assets.heroku.com/install.sh | sh"
echo ""
curl https://cli-assets.heroku.com/install.sh | sh
bar 80


###############################################################################################################################################################
# Instalacion php-mysql                                                                                                                                      #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php-mysql  -y" 1 "Componentes LAMP php-mysql "
echo ""
sudo apt-get install php-mysql  -y
bar 80


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.1-mysql  -y" 1 "Componentes LAMP php7.1-mysql "
echo ""
sudo apt-get install php7.1-mysql  -y
bar 80


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-mysql  -y" 1 "Componentes LAMP php7.2-mysql "
echo ""
sudo apt-get install php7.2-mysql  -y
bar 80


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.3-mysql  -y" 1 "Componentes LAMP php7.3-mysql "
echo ""
sudo apt-get install php7.3-mysql  -y
bar 80

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.4-mysql  -y" 1 "Componentes LAMP php7.4-mysql "
echo ""
sudo apt-get install php7.4-mysql  -y
bar 80

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php8.0-mysql  -y" 1 "Componentes LAMP php8.0-mysql "
echo ""
sudo apt-get install php8.0-mysql  -y
bar 80

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php8.1-mysql  -y" 1 "Componentes LAMP php8.1-mysql "
echo ""
sudo apt-get install php8.1-mysql  -y
bar 80


###############################################################################################################################################################
# Instalacion php-pgsql                                                                                                                                    #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php-pgsql -y" 1 "Componentes LAMP php-pgsql "
echo ""
sudo apt-get install php-pgsql -y
bar 80

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.1-pgsql -y" 1 "Componentes LAMP php7.1-pgsql "
echo ""
sudo apt-get install php7.1-pgsql -y
bar 80


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-pgsql -y" 1 "Componentes LAMP php7.2-pgsql "
echo ""
sudo apt-get install php7.2-pgsql -y
bar 80

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.3-pgsql -y" 1 "Componentes LAMP php7.3-pgsql "
echo ""
sudo apt-get install php7.3-pgsql -y
bar 80



###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.4-pgsql -y" 1 "Componentes LAMP php7.4-pgsql "
echo ""
sudo apt-get install php7.4-pgsql -y
bar 80


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php8.0-pgsql -y" 1 "Componentes LAMP php8.0-pgsql "
echo ""
sudo apt-get install php8.0-pgsql -y
bar 80


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php8.1-pgsql -y" 1 "Componentes LAMP php8.1-pgsql "
echo ""
#sudo apt-get install php8.1-pgsql -y
bar 80



###############################################################################################################################################################
# Actualizacion Sistema                                                                                                                                    #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt update -y"
echo ""
sudo apt update -y
bar 80

###############################################################################################################################################################
echo ""
Process "sudo apt upgrade -y"
echo ""
sudo apt upgrade -y
bar 80


###############################################################################################################################################################
echo ""
Process "service mysql restart " 1 "Reinicio de Servicios"
echo ""
service mysql restart
bar 80

###############################################################################################################################################################
echo ""
Process "service apache2 restart " 1 "Reinicio de Servicios"
echo ""
service apache2 restart
bar 80

###############################################################################################################################################################
echo ""
Process "service --status-all" 1 "Reinicio de Servicios"
echo ""
service --status-all
bar 80









###############################################################################################################################################################
# Instalacion php-cgi                                                                                                                                    #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php-cgi -y" 1 "Componentes LAMP php-cgi "
echo ""
sudo apt-get install php-cgi -y
bar 30


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.1-cgi -y" 1 "Componentes LAMP php7.1-cgi "
echo ""
sudo apt-get install php7.1-cgi -y
bar 30


###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-cgi -y" 1 "Componentes LAMP php7.2-cgi "
echo ""
sudo apt-get install php7.2-cgi -y
bar 30



###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.3-cgi -y" 1 "Componentes LAMP php7.3-cgi "
echo ""
#sudo apt-get install php7.3-cgi -y
bar 30



###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.4-cgi -y" 1 "Componentes LAMP php7.4-cgi "
echo ""
#sudo apt-get install php7.4-cgi -y
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php8.0-cgi -y" 1 "Componentes LAMP php8.0-cgi "
echo ""
#sudo apt-get install php8.0-cgi -y
bar 30

###############################################################################################################################################################
###############################################################################################################################################################
###############################################################################################################################################################
echo ""
Process "sudo apt-get install php8.1-cgi -y" 1 "Componentes LAMP php8.1-cgi "
echo ""
# sudo apt-get install php8.1-cgi -y
echo "Paquete no disponible"
bar 30



###############################################################################################################################################################
# Actualizacion Sistema                                                                                                                                    #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt update -y"
echo ""
sudo apt update -y
bar 30

###############################################################################################################################################################
echo ""
Process "sudo apt upgrade -y"
echo ""
sudo apt upgrade -y
bar 30






###############################################################################################################################################################
echo ""
Process "service mysql restart " 1 "Reinicio de Servicios"
echo ""
service mysql restart
bar 40

###############################################################################################################################################################
echo ""
Process "service apache2 restart " 1 "Reinicio de Servicios"
echo ""
service apache2 restart
bar 40

###############################################################################################################################################################
echo ""
Process "service --status-all" 1 "Reinicio de Servicios"
echo ""
service --status-all
bar 40









##############################################
#sudo apt install php-mysql -y

##############################################
#php -v














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
