#!/bin/bash

################################################################################
# Nome: exercicio1.sh                                                          #
#                                                                              #
# Autor: Amaury Borges Souza (amaurybsouza@gmail.com)                          #
# Data: 16/09/2018                                                             #
#                                                                              #
# Descrição: O script faz a soma de dois valores inseridos pelo usuário        #
#                                                                              #
# Uso: ./exercicio1.sh                                                         #
#                                                                              # 
################################################################################

echo "INICIANDO MEU SCRIPT"
sleep 2
echo ""
echo -n "Por favor digite um número: "
read NUM1
echo -n "Você digitou: " ; echo $NUM1
sleep 2
echo ""
echo -n "Por favor digite um número: "
read NUM2
echo -n "Você digitou: " ; echo $NUM2
sleep 2
echo ""
echo -n "A soma de: " $NUM1 + $NUM2 é: $(($NUM1+$NUM2))
echo ""
echo "Fim do script"
echo ""
sleep 2



# Outra forma de se fazer a mesma função:

#read -p "Informe o valor 1: " VALOR1
#read -p "informe o valor 2: " VALOR2

#echo
#echo "A soma de $VALOR1 + $VALOR2 é $(expr $VALOR1 + $VALOR2)"









