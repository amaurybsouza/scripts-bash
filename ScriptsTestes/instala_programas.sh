#!/usr/bin/env bash

clear
TIME=2
CAMINHOVLC=/usr/bin/vlc
CAMINHOPINTA=/usr/bin/pinta
CAMINHOGIMP=/usr/bin/gimp
CAMINHOBRASERO=/usr/bin/brasero
CAMINHOWIRESHARK=/usr/bin/wireshark
echo BEM VINDO AO PROGRAMA DE INSTALAÇÃO DE SOFTWARES PARA LINUX
echo " "
echo "Escolha um software para instalação
      
      1 - VLC
      2 - Pinta
      3 - Brasero
      4 - Wireshark
      0 - Sair"
echo " "
echo -n "Opção escolhida: "
read opcao
case $opcao in
	1) 
		echo Instalação do VLC Player em andamento...
		sleep $TIME
		if [ -f $CAMINHOVLC ]
		then
			echo Esse programa já está instalado!
		else
			apt install vlc -y
		fi
		;;
	2)
		echo Instalação do Pinta em andamento...
		sleep $TIME
		if [ -f $CAMINHOPINTA ]
		then
			echo Esse programa já está instalado!
		else
			apt install pinta -y
		fi
		;;
	3)
		echo Instalação do Brasero em andamento... 
		sleep $TIME
		if [ -f $CAMINHOBRASERO ]
		then
			echo Esse programa já está instalado!
		else
			apt install brasero -y
		fi
		;;
	4)
		echo Instalação do Wireshark em andamento...
		sleep $TIME
		if [ -f $CAMINHOWIRESHARK ]
		then
			echo Esse programa já está instaaldo!
		else
			apt install wireshark -y
		fi
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
