#!/bin/bash

DATE_LOG=`date "+%Y%m%d-%H%M%S"`

PARA="guido.rios@redsalud.gov.cl"
DE="guido.rios@redsalud.gov.cl"
FECHA=`date "+%d-%m-%Y-%H:%M:%S"`
CUERPO="Vamos por el PC ?"



Titulo()
{
echo -e "\033[34m#################################   \033[m"
echo -e "\033[34m#                               #   \033[m"
echo -e "\033[34m# Mail Bot                      #   \033[m"
echo -e "\033[34m#                               #   \033[m"
echo -e "\033[34m#################################   \033[m"
}




Titulo

./template.sh $PARA $DE $FECHA $CUERPO

./mail.sh "guido.rios@redsalud.gov.cl"



rm -rf template.html
