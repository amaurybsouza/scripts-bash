#!/usr/bin/env bash

clear
TIME=2
echo BEM VINDO AO JOGO SECRETO!
sleep $TIME
echo -n "Caso deseje jogar, digite "1" ou "0" para sair: "
read jogo
	if [ $jogo -eq 1 ]
	then
		echo -e O jogo será iniciado!
		sleep $TIME
	else
		echo -e Obrigado participar, mas na verdade queríamos que você jogasse com a gente!
		exit
	fi
	while true; do
		echo -n "Digite um número entre 1 e 100: "
	read numero
	if [ $numero -eq 5 ] 
	then
		echo -e "Você ACERTOU, PARABÉNS!"
		sleep $TIME
		echo Saindo do jogo!
		exit
	else
		echo -e "Você ERROU! Tente novamente outro número!"
	fi
	done
