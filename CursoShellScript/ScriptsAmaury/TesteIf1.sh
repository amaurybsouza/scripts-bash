#!/bin/bash

#############################################################
#                                                           #
# NOME: TesteIf1.sh                                         #
#                                                           # 
# AUTOR: Amaury Borges Souza (amaurybsouza@gmail.com)       #
#                                                           #
# DATA: 02/11/2018                                          #
#                                                           #
# DESCRIÇÃO: O script faz um teste para que você digite     #
#            seu nome, caso contrário, ele não mostra       #                                       
#                                                           #
# USO: ./TesteIf1.sh                                        #
#############################################################

echo -n "Digite seu nome: "
read nome
     if [ -z $nome ]
then
    echo "Você não digitou seu nome!"
else
    echo "Olá, $nome"
fi
