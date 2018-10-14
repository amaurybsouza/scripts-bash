#!/bin/bash

#Exibição do Menu:
clear
echo "Escolha uma opção do menu:"
echo
echo "1 - Atualizar o sistema"
echo "2 - Limpando pacotes do sistema"
echo "3 - Escrevendo um teste com echo"
echo "q - sair"
echo
read -p "Opção:" opcao
echo

# Rotinas das Opções:

case "$opcao" in
        1)
                echo "Opção 1 escolhida"
                echo "Atualizar o sistema"
                sleep 3
                ;;
        2)
                echo "Opção 2 escolhida"
                echo "Limpando pacotes do sistema"
                sleep 3
                ;;
        3)
                echo "Opção 3 escolhida"
                echo "Escrevendo um teste com echo"
                sleep 3
                ;;
esac


