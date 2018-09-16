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

DATAHORA=$(date +%H:%M)
ARQALUNOS="/home/amaury/Projetos-GitHuB/Shell-Script/CursoShellScript/arquivos/alunos2.txt"

# Função da leitura de data e hora
clear
echo "===== MEU PRIMEIRO SCRIPT ====="
echo ""
echo "Exibir data e hora atual: $DATAHORA"

# Area de leitura da lista de alunos
echo "==============================="
echo "Listagem de Alunos: "
sort $ARQALUNOS 
