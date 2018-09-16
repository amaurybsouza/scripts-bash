#!/bin/bash

########################################################################################
#                                                                                      #
# PrimeiroScript.sh - "Script de exemplo do curso"                                     # 
#                                                                                      # 
# Autor: Amaury Borges Souza (amaurybsouza@gmail.com)                                  #
# Data de criação: 16/09/2018                                                          #
#                                                                                      #
# Descrição: Script de exemplo que lê a data e hora atual e exibe a lista de alunos    #
#                                                                                      #
# Exemplo de uso: ./PrimeiroScript.sh                                                  #
#                                                                                      #
# Alterações:                                                                          #
#       Dia 16/09 - Inclusão da função de ordenação                                    #
#       Dia 16/09 - Correção da função de leitura                                      # 
#                                                                                      #
######################################################################################## 

# Função da leitura de data e hora
clear
echo "===== MEU PRIMEIRO SCRIPT ====="
echo ""
echo -n "Exibir data e hora atual: "
date

# Area de leitura da lista de alunos
echo "==============================="
echo "Listagem de Alunos: "
sort ../arquivos/alunos2.txt # Caminho dos arquivos de alunos
