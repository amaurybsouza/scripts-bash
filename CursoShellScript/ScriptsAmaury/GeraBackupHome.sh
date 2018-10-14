#!/bin/bash

#############################################################
#                                                           #
# NOME: GeraBackupHome.sh                                   #
#                                                           # 
# AUTOR: Amaury Borges Souza (amaurybsouza@gmail.com)       #
#                                                           #
# DATA: 02/10/2018                                          #
#                                                           #
# DESCRIÇÃO: O script gera um backup do home do usuário     #
#                                                           #
#                                                           #
# USO: ./GeraBackupHome.sh                                  #
#############################################################

DIRDEST=$HOME/Backup

if [ ! -d $DIRDEST ]
then
	echo "Criando diretório $DIRDEST..."
	mkdir -p $DIRDEST
fi

DAYS7=$(find $DIRDEST -ctime -7 -name backup_home\*tgz)

if [ "$DAYS7" ] #testa a variavel se é nula.
then
	echo "Já foi gerado um backup do diretório $HOME nos últimos 7 dias."
	echo -n "Deseja continuar? (N/s):"
	read -n1 CONT
	echo
	if [ "$CONT"]
