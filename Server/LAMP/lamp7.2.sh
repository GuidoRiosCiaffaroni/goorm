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
	b=`expr 34`
	let c=(100*$a)/$b
	echo ""
	echo ""
	echo -e "\033[35m--> \033[m \033[32m Proceso --- $a de $b - $c % --- \033[m \033[35m <-- \033[m " 
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
	echo "Tipo Proceso		:	$3" >> "$DATE_LOG"_log.txt
	echo "Instruccion		:	$1" >> "$DATE_LOG"_log.txt
	echo "Tiempo Inicio		:	$DATE_WITH_TIME" >> "$DATE_LOG"_log.txt

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
d=1
rojo=30
printf '|'
while [ $d -lt $c ]
do
	printf '#'
	d=`expr $d + 1`
done
printf "$d"
# printf '\e[31m%s\e[0m' "this is in red"

echo ""
echo ""

case $c in

1) echo -e "\033[31m [            ]        ($c %)\033[m"
sleep 2
;;
2) echo -e "\033[31m [            ]        ($c %)\033[m"
sleep 2
;;
3) echo -e "\033[31m [            ]        ($c %)\033[m"
sleep 2
;;
4) echo -e "\033[31m [            ]        ($c %)\033[m"
sleep 2
;;
5) echo -e "\033[31m [            ]        ($c %)\033[m"
sleep 2
;;
6) echo -e "\033[31m [            ]        ($c %)\033[m"
sleep 2
;;
7) echo -e "\033[31m [            ]        ($c %)\033[m"
sleep 2
;;
8) echo -e "\033[31m [            ]        ($c %)\033[m"
sleep 2
;;
9) echo -e "\033[31m [            ]        ($c %)\033[m"
sleep 2
;;
10) echo -e "\033[31m [#          ]        ($c %)\033[m"
sleep 2
;;
11) echo -e "\033[31m [#          ]        ($c %)\033[m"
sleep 2
;;
12) echo -e "\033[31m [#          ]        ($c %)\033[m"
sleep 2
;;
13) echo -e "\033[31m [#          ]        ($c %)\033[m"
sleep 2
;;
14) echo -e "\033[31m [#          ]        ($c %)\033[m"
sleep 2
;;
15) echo -e "\033[31m [#          ]         ($c %)\033[m"
sleep 2
;;
16) echo -e "\033[31m [#          ]         ($c %)\033[m"
sleep 2
;;
17) echo -e "\033[31m [#          ]         ($c %)\033[m"
sleep 2
;;
18) echo -e "\033[31m [#          ]         ($c %)\033[m"
sleep 2
;;
19) echo -e "\033[31m [#          ]         ($c %)\033[m"
sleep 2
;;
20) echo -e "\033[31m [##         ]         ($c %)\033[m"
sleep 2
;;
21) echo -e "\033[31m [##         ]         ($c %)\033[m"
sleep 2
;;
22) echo -e "\033[31m [##         ]         ($c %)\033[m"
sleep 2
;;
23) echo -e "\033[31m [##         ]         ($c %)\033[m"
sleep 2
;;
24) echo -e "\033[31m [##         ]         ($c %)\033[m"
sleep 2
;;
25) echo -e "\033[31m [##         ]         ($c %)\033[m"
sleep 2
;;
26) echo -e "\033[31m [##         ]         ($c %)\033[m"
sleep 2
;;
27) echo -e "\033[31m [##         ]         ($c %)\033[m"
sleep 2
;;
28) echo -e "\033[31m [##         ]         ($c %)\033[m"
sleep 2
;;
29) echo -e "\033[31m [##         ]         ($c %)\033[m"
sleep 2
;;
30) echo -e "\033[31m [###        ]         ($c %)\033[m"
sleep 2
;;
31) echo -e "\033[31m [###        ]         ($c %)\033[m"
sleep 2
;;
32) echo -e "\033[31m [###        ]         ($c %)\033[m"
sleep 2
;;
33) echo -e "\033[31m [###        ]         ($c %)\033[m"
sleep 2
;;
34) echo -e "\033[31m [###        ]         ($c %)\033[m"
sleep 2
;;
35) echo -e "\033[31m [###        ]         ($c %)\033[m"
sleep 2
;;
36) echo -e "\033[31m [###        ]         ($c %)\033[m"
sleep 2
;;
37) echo -e "\033[31m [###        ]          ($c %)\033[m"
sleep 2
;;
38) echo -e "\033[31m [###        ]          ($c %)\033[m"
sleep 2
;;
39) echo -e "\033[31m [###        ]          ($c %)\033[m"
sleep 2
;;
40) echo -e "\033[31m [####       ]          ($c %)\033[m"
sleep 2
;;
41) echo -e "\033[31m [####       ]          ($c %)\033[m"
sleep 2
;;
42) echo -e "\033[31m [####       ]          ($c %)\033[m"
sleep 2
;;
43) echo -e "\033[31m [####       ]          ($c %)\033[m"
sleep 2
;;
44) echo -e "\033[31m [####       ]          ($c %)\033[m"
sleep 2
;;
45) echo -e "\033[31m [####       ]          ($c %)\033[m"
sleep 2
;;
46) echo -e "\033[31m [####       ]          ($c %)\033[m"
sleep 2
;;
47) echo -e "\033[31m [####       ]          ($c %)\033[m"
sleep 2
;;
48) echo -e "\033[31m [####       ]          ($c %)\033[m"
sleep 2
;;
49) echo -e "\033[31m [####       ]          ($c %)\033[m"
sleep 2
;;
50) echo -e "\033[33m [#####      ]          ($c %)\033[m"
sleep 2
;;
51) echo -e "\033[33m [#####      ]          ($c %)\033[m"
sleep 2
;;
52) echo -e "\033[33m [#####      ]          ($c %)\033[m"
sleep 2
;;
53) echo -e "\033[33m [#####      ]          ($c %)\033[m"
sleep 2
;;
54) echo -e "\033[33m [#####      ]          ($c %)\033[m"
sleep 2
;;
55) echo -e "\033[33m [#####      ]          ($c %)\033[m"
sleep 2
;;
56) echo -e "\033[33m [#####      ]          ($c %)\033[m"
sleep 2
;;
57) echo -e "\033[33m [#####      ]          ($c %)\033[m"
sleep 2
;;
58) echo -e "\033[33m [#####      ]          ($c %)\033[m"
sleep 2
;;
59) echo -e "\033[33m [#####      ]          ($c %)\033[m"
sleep 2
;;
60) echo -e "\033[33m [######     ]          ($c %)\033[m"
sleep 2
;;
61) echo -e "\033[33m [######     ]          ($c %)\033[m"
sleep 2
;;
62) echo -e "\033[33m [######     ]          ($c %)\033[m"
sleep 2
;;
63) echo -e "\033[33m [######     ]          ($c %)\033[m"
sleep 2
;;
64) echo -e "\033[33m [######     ]          ($c %)\033[m"
sleep 2
;;
65) echo -e "\033[33m [######     ]          ($c %)\033[m"
sleep 2
;;
66) echo -e "\033[33m [######     ]          ($c %)\033[m"
sleep 2
;;
67) echo -e "\033[33m [######     ]          ($c %)\033[m"
sleep 2
;;
68) echo -e "\033[33m [######     ]          ($c %)\033[m"
sleep 2
;;
69) echo -e "\033[33m [######     ]          ($c %)\033[m"
sleep 2
;;
70) echo -e "\033[33m [#######    ]          ($c %)\033[m"
sleep 2
;;
71) echo -e "\033[33m [#######    ]          ($c %)\033[m"
sleep 2
;;
72) echo -e "\033[33m [#######    ]          ($c %)\033[m"
sleep 2
;;
73) echo -e "\033[33m [#######    ]          ($c %)\033[m"
sleep 2
;;
74) echo -e "\033[33m [#######    ]          ($c %)\033[m"
sleep 2
;;
75) echo -e "\033[33m [#######    ]          ($c %)\033[m"
sleep 2
;;
76) echo -e "\033[33m [#######    ]          ($c %)\033[m"
sleep 2
;;
77) echo -e "\033[33m [#######    ]          ($c %)\033[m"
sleep 2
;;
78) echo -e "\033[33m [#######    ]          ($c %)\033[m"
sleep 2
;;
79) echo -e "\033[33m [#######    ]          ($c %)\033[m"
sleep 2
;;
80) echo -e "\033[33m [########   ]          ($c %)\033[m"
sleep 2
;;
81) echo -e "\033[33m [########   ]          ($c %)\033[m"
sleep 2
;;
82) echo -e "\033[33m [########   ]          ($c %)\033[m"
sleep 2
;;
83) echo -e "\033[33m [########   ]          ($c %)\033[m"
sleep 2
;;
84) echo -e "\033[33m [########   ]          ($c %)\033[m"
sleep 2
;;
85) echo -e "\033[33m [########   ]          ($c %)\033[m"
sleep 2
;;
86) echo -e "\033[33m [########   ]          ($c %)\033[m"
sleep 2
;;
87) echo -e "\033[33m [########   ]          ($c %)\033[m"
sleep 2
;;
88) echo -e "\033[33m [########   ]          ($c %)\033[m"
sleep 2
;;
89) echo -e "\033[33m [########   ]          ($c %)\033[m"
sleep 2
;;
90) echo -e "\033[33m [#########  ]          ($c %)\033[m"
sleep 2
;;
91) echo -e "\033[33m [#########  ]          ($c %)\033[m"
sleep 2
;;
92) echo -e "\033[33m [#########  ]          ($c %)\033[m"
sleep 2
;;
93) echo -e "\033[33m [#########  ]          ($c %)\033[m"
sleep 2
;;
94) echo -e "\033[33m [#########  ]          ($c %)\033[m"
sleep 2
;;
95) echo -e "\033[33m [#########  ]          ($c %)\033[m"
sleep 2
;;
96) echo -e "\033[33m [#########  ]          ($c %)\033[m"
sleep 2
;;
97) echo -e "\033[33m [#########  ]          ($c %)\033[m"
sleep 2
;;
98) echo -e "\033[33m [#########  ]          ($c %)\033[m"
sleep 2
;;
99) echo -e "\033[33m [#########  ]          ($c %)\033[m"
sleep 2
;;
100) echo -e "\033[32m [##########]         ($c %)\033[m"
sleep 2
;;
   
esac

clear
DATE_WITH_TIME=`date "+%Y%m%d-%H%M%S"` #add %3N as we want millisecond too
echo "Tiempo Fin		:	$DATE_WITH_TIME" >> "$DATE_LOG"_log.txt

}




fin()
{
a=`expr 0`

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
#sudo apt update -y
bar 10

###############################################################################################################################################################
echo ""
Process "sudo apt upgrade -y" 1 "Instalacion Preliminar"
echo ""
#sudo apt upgrade -y
bar 10

###############################################################################################################################################################
echo ""
Process "sudo apt autoremove" 1 "Instalacion Preliminar"
echo ""
#sudo apt autoremove -y
bar 10

###############################################################################################################################################################
echo ""
Process "sudo apt autoclean" 1 "Instalacion Preliminar"
echo ""
#sudo apt autoclean -y
bar 10

###############################################################################################################################################################
echo ""
Process "sudo apt dist-upgrade" 1 "Instalacion Preliminar"
echo ""
#sudo apt dist-upgrade -y
bar 10

###############################################################################################################################################################

Process "wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add -" 1 "Instalacion Preliminar"
echo -e "\033[34m--> \033[m \033[32m wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add - \033[m   \033[34m <-- \033[m" 
echo ""
#wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add -
bar 10

###############################################################################################################################################################
echo ""
Process "echo \"deb http://packages.cloudfoundry.org/debian stable main\" > /etc/apt/sources.list.d/cloudfoundry-cli.list" 1 "Instalacion Preliminar"
echo ""
# echo "deb http://packages.cloudfoundry.org/debian stable main" > /etc/apt/sources.list.d/cloudfoundry-cli.list
bar 10

###############################################################################################################################################################
echo ""
Process "apt-get update -y" 1 "Instalacion Preliminar"
echo ""
#apt-get update -y
bar 10


###############################################################################################################################################################
echo ""
Process "apt-get install -y cf-cli" 1 "Instalacion Preliminar"
echo ""
#apt-get install -y cf-cli
bar 10

###############################################################################################################################################################
echo ""
Process "wget https://cli-assets.heroku.com/apt/release.key" 1 "Instalacion Preliminar"
echo ""
# rm -rf release.key
# wget https://cli-assets.heroku.com/apt/release.key
bar 10

###############################################################################################################################################################
echo ""
Process "gpg --list-packets release.key" 1 "Instalacion Preliminar"
echo ""
# gpg --list-packets release.key
bar 10

###############################################################################################################################################################
echo ""
Process "curl https://cli-assets.heroku.com/install.sh | sh" 1 "Instalacion Preliminar"
echo ""
# curl https://cli-assets.heroku.com/install.sh | sh
bar 10

###############################################################################################################################################################
echo ""
Process "curl -fsSL https://cli-assets.heroku.com/apt/release.key | sudo gpg --dearmor -o /usr/share/keyrings/heroku-archive-keyring.gpg" 1 "Instalacion Preliminar"
echo ""
# rm -rf /usr/share/keyrings/heroku-archive-keyring.gpg
# curl -fsSL https://cli-assets.heroku.com/apt/release.key | sudo gpg --dearmor -o /usr/share/keyrings/heroku-archive-keyring.gpg 
bar 10

###############################################################################################################################################################
echo ""
Process "sudo add-apt-repository -r \"deb https://cli-assets.heroku.com/branches/stable/apt ./" 1 "Instalacion Preliminar"
echo ""
# sudo add-apt-repository -r "deb https://cli-assets.heroku.com/branches/stable/apt ./"
bar 10

###############################################################################################################################################################
echo ""
Process "sudo apt update -y" 1 "Instalacion Preliminar"
echo ""
# sudo apt update -y
bar 10

###############################################################################################################################################################
echo ""
Process "sudo apt upgrade -y" 1 "Instalacion Preliminar"
echo ""
# sudo apt upgrade -y
bar 10


###############################################################################################################################################################
echo ""
Process "sudo apt sed -y" 1 "Instalacion Preliminar"
echo ""
# sudo apt install sed -y
bar 10


###############################################################################################################################################################
echo ""
Process "sudo apt install tmux -y" 1 "Instalacion Preliminar"
echo ""
# sudo apt install tmux -y
bar 10


###############################################################################################################################################################
# Instalacion LAMP                                                                                                                                            #
###############################################################################################################################################################

###############################################################################################################################################################
echo ""
Process "sudo apt install apache2 -y" 1 "Instalacion LAMP"
echo ""
#sudo apt install apache2 -y 
bar 20

###############################################################################################################################################################
echo ""
Process "sudo apt install mysql-server -y" 1 "Instalacion LAMP"
echo ""
# sudo apt install mysql-server -y
bar 20


###############################################################################################################################################################
echo ""
Process "sudo apt install php7.2 -y" 1 "Instalacion LAMP"
echo ""
#sudo apt install php7.2 -y
bar 20

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-mysql -y" 1 "Instalacion LAMP"
echo ""
#sudo apt-get install php7.2-mysql -y 
bar 20

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-curl -y" 1 "Instalacion LAMP"
echo ""
#sudo apt-get install php7.2-curl -y  
bar 20

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-xml -y" 1 "Instalacion LAMP"
echo ""
#sudo apt-get install php7.2-xml -y 
bar 20

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-gd -y" 1 "Instalacion LAMP"
echo ""
#sudo apt-get install php7.2-gd -y 
bar 20

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-opcache -y" 1 "Instalacion LAMP"
echo ""
#sudo apt-get install php7.2-opcache -y
bar 20

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-mbstring -y" 1 "Instalacion LAMP"
echo ""
#sudo apt-get install php7.2-mbstring -y
bar 20

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-tokenizer -y" 1 "Instalacion LAMP"
echo ""
#sudo apt-get install php7.2-tokenizer -y
bar 20

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-json -y " 1 "Instalacion LAMP"
echo ""
#sudo apt-get install php7.2-json -y 
bar 20

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-bcmath -y" 1 "Instalacion LAMP"
echo ""
#sudo apt-get install php7.2-bcmath -y
bar 20

###############################################################################################################################################################
echo ""
Process "sudo apt-get install php7.2-zip -y" 1 "Instalacion LAMP"
echo ""
#sudo apt-get install php7.2-zip -y
bar 20

###############################################################################################################################################################
echo ""
Process "sudo apt install libapache2-mod-php7.2 -y" 1 "Instalacion LAMP"
echo ""
#sudo apt install libapache2-mod-php7.2 -y
bar 20

###############################################################################################################################################################
echo ""
Process "sudo apt install libapache2-mod-php -y" 1 "Instalacion LAMP"
echo ""
#sudo apt install libapache2-mod-php -y
bar 20

###############################################################################################################################################################
echo ""
Process "sudo timedatectl set-timezone America/Santiago" 1 "Instalacion LAMP"
echo ""
# sudo timedatectl set-timezone America/Santiago
bar 20 




fin
