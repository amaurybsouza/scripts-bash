#!/usr/bin/env bash

clear
TIME=2
resultado=0
echo -n "Digite o valor 1: "
read valor1
echo -n "Digite o valor 2: "
read valor2
echo " "
echo -e "ESCOLHA UMA OPÇÃO ABAIXO PARA CALCULAR!
         
         1 - SOMA
	 2 - SUBTRAÇÃO
	 3 - DIVISÃO
	 4 - SAIR"
echo " "
echo -n "Opção escolhida: "
read opcao
case $opcao in
	1)	
		resultado=`expr $valor1 + $valor2`
		;;
	2)
		resultado=`expr $valor1 - $valor2`
		;;
	3) 
		resultado=`expr $valor1 / $valor2`
		;;
	4)	
		echo Saindo...
		sleep $TIME
		exit 0
		;;
esac
echo "O resultado é: $resultado"
