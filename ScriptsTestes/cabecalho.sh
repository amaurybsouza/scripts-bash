#!/usr/bin/env bash
# 
# ------------------------------------------------------------------------ #
# Script Name:   atualiza_sistema.sh 
# Description:   Update the system using apt comand.
# Site:          https://medium.com/@amaurybsouza
# Linkedin:      www.linkedin.com/in/amaurybsouza/
# Written by:    Amaury
# Maintenance:   Amaury
# ------------------------------------------------------------------------ #
# Usage:         $ ./atualiza_sistema.sh
# ------------------------------------------------------------------------ #
# Bash Version:  4.4.19
# ------------------------------------------------------------------------ # 
# History:        v1.0 17/05/2019, Amaury:
#                - Start de program
#                - Add (apt clean) option for compare values
#                v1.1 19/05/2019, Amaury:
#                - Tested with apt autoremove feature
# ------------------------------------------------------------------------ #

TIME=2
clear
echo SEJA BEM VINDO AO SISTEMA DE ATUALIZAÇÃO DO UBUNTU!
sleep $TIME
echo " "
echo "Escolha uma opção abaixo para começar!
      
      1 - Verificar repositório do sistema
      2 - Instalar atualizações do sistema
      3 - Limpar o sistema
      4 - Remover pacotes não necessários
      0 - Sair do sistema"
echo " "
echo -n "Opção escolhida: "
read opcao
case $opcao in
	1) 
		echo Verificando o sistema por atualizações...
		sleep $TIME
		apt update
		;;
	2)
		echo Instalando atualizações do sistema...
		sleep $TIME
		apt upgrade -y
		;;
	3)
		echo Limpando o sistema...
		apt clean
		apt autoclean
		;;
	4) 
		echo Removendo pacotes desnecessários do sistema...
		sleep $TIME
		apt autoremove -y
		;;
	0)
		echo Saindo do sistema...
		sleep $TIME
		exit 0
		;;
		
	*)
		echo Opção inválida, tente novamente!
		;;
esac
