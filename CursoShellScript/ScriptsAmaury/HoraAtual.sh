#!/bin/bash

#############################################################
#                                                           #
# NOME: HoraAtual.sh                                        #
#                                                           # 
# AUTOR: Amaury Borges Souza (amaurybsouza@gmail.com)       #
#                                                           #
# DATA: 16/09/2018                                          #
#                                                           #
# DESCRIÇÃO: O script mostra a hora atual                   #
#                                                           #
#                                                           #
# USO: ./HoraAtual.sh                                       #
#############################################################

if [ "$(date +%k)" -ge 6 -a "$(date +%k)" -le 11 ]
then
echo "Bom dia $USER, Hoje é $(date +%a), dia $(date +%d) de $(date +%b) de $(date +%Y)"

elif [ "$(date +%k)" -ge 12 -a "$(date +%k)" -le 17 ]
then
echo "Boa tarde $USER, Hoje é $(date +%a), dia $(date +%d) de $(date +%b) de $(date +%Y)"

else echo "Boa noite $USER, Hoje é $(date +%a), dia $(date +%d) de $(date +%b) de $(date +%Y)"
fi




# OUTRO EXEMPLO DO SCRIPT #

#horas=`date | cut -d" " -f4 | cut -d: -f1`

##if (("$horas" >= "06")) && (("$horas" <= "12"))
#then
#	echo -e "Bom dia!"
#elif (("$horas" > "12")) && (("$horas" < "18"))
#then
#	echo -e "Boa tarde!"
#else
#	echo -e "Boa noite!"
#fi
