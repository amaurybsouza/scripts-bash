#!/usr/bin/env bash
#
# ------------------------------------------------------------------------ #
# Script Name: compare.sh - Check which number is larger than the other
#
# Site:          https://medium.com/@amaurybsouza
# Written by:    Amaury
# Maintenance:   Amaury
# E-mail:        amaurybsouza@gmail.com
#
# ------------------------------------------------------------------------ #
# Check which number is larger than the other
#
# Examples:
#      How to use this script?
#      $ ./compare.sh
# ------------------------------------------------------------------------ #
# History:
#
#   v1.0 17/05/2019, Amaury:
#       - Start de program
#       - Add (gt and lt) options for compare values
#   v1.1 17/05/2019, Amaury:
#       - Tested with elif feature
# ------------------------------------------------------------------------ #
# Testd on:
#   Bash 4.4.19
# ------------------------------------------------------------------------ #
# Grateful:
#      - Amaury Souza
# 	  
#	  
# ------------------------------------------------------------------------ #

clear
echo -n "Digite um número: "
read numero1

echo -n "Digite outro número: "
read numero2

if [ $numero1 -gt $numero2 ]
then
	echo $numero1 é MAIOR!
elif [ $numero1 -lt $numero2 ]
then
	echo $numero1 é MENOR!
else
	echo teste
fi







