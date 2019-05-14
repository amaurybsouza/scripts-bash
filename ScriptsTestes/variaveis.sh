#!/bin/bash

#Declaração de variável com uma string
NOME="Amaury Borges Souza"
echo Meu nome é: $NOME

#Declaração de variável com comandos
SAIDA_CAT=`cat /etc/passwd | grep dicsi`
echo $SAIDA_CAT

#Declaração de variável com operações
VAR1=20
VAR2=10
TOTAL=$[$VAR1 + $VAR2]
echo $TOTAL
