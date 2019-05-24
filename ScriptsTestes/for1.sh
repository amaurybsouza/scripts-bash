#!/bin/bash
#
# for1.sh - Verifica os arquivos e diretórios do /etc
#
# Site:        https://medium.com/@amaurybsouza
# Autor:       Amaury
# Manutenção:  Amaury
#
# ------------------------------------------------------------------------ #
#
#
#
#
#
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 03/10/2018, Mateus:
#       - Início do programa
#       - Conta com a funcionalidade X
#   v1.1 10/10/2018, Lucas:
#       - Alterado parametro XXXXX
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.4.19
# ------------------------------------------------------------------------ #
# Agradecimentos:
#
#       Joãozinho - Encontrou um bug na parte de login.
#       Mariazinha - Enviou uma sugestão de adicionar o -h.
# ------------------------------------------------------------------------ #

clear
for valor in `ls /etc/*`
do
	echo O arquivo é: $valor
	if [ -f $valor ]
then
	echo Isso é um arquivo!
	echo Esse $valor tem um tamanho de: `du -sh $valor`
else
	echo Isso é um diretório!
fi
done



