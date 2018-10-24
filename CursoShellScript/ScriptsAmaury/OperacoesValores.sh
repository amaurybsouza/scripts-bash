#!/bin/bash

#############################################################
#                                                           #
# NOME: OperacoesValores.sh                                 #
#                                                           # 
# AUTOR: Amaury Borges Souza (amaurybsouza@gmail.com)       #
#                                                           #
# DATA: 22/10/2018                                          #
#                                                           #
# DESCRIÇÃO: O script recebe dois valores inseridos pelo    #
#            usuário e exibe um menu para que umas das      #
#            operações seja realizada.                      #
#                                                           #
# USO: ./OperacoesValores.sh                                #
#                                                           #
#############################################################

#Exibição do Menu:
read -p "Entre com o valor 1: " VALOR1
read -p "Entre com o valor 2: " VALOR2

#Tratando a condição estabelecida no exercicio.
if [ ! $VALOR1 ] || [ ! $VALOR2 ]
then
	echo "Nenhum dos valores pode ser nulo"
	exit 1
fi

echo 
echo "Escolha uma das opções para os valores:"
echo
echo "1 - SOMA"
echo "2 - SUBTRAÇÃO"
echo "3 - MULTIPLICAÇÃO"
echo "4 - DIVISÃO"
echo "q - sair"
echo

read -p "Opção: " opcao
echo 

# Rotinas das Opções:
case "$opcao" in
        1)
                OPER="+"
		;;
        2)
                OPER="-"
		;;
        3)
                if [ $VALOR1 -eq 0 -o $VALOR2 -eq 0 ]
		then
			echo "O valor 0 não pode ser usado nessa operação."
			exit 1
		fi
		OPER="*"
		;;
	4)      
		if [ $VALOR1 -eq 0 -o $VALOR2 -eq 0 ]
		then
			echo "O valor 0 não pode ser usado nessa operação."
			exit 1
		fi

		if [ $(expr $VALOR1 % $VALOR2) -ne 0 ]
		then 
			echo "Divisão com resto = $(expr $VALOR1 % $VALOR2)"
		else
			echo "Divisão exata"
		fi
		echo 
		OPER="/"
		;;
	[qQ])
	       echo "Saindo do sistema... "
               exit
	       ;;
       *)
	       echo "Opção inválida"
               exit 1
	       ;;
esac
echo "$VALOR1 $OPER $VALOR2 = $(expr $VALOR1 "$OPER" $VALOR2)"
