#!/usr/bin/env bash
# 
# ------------------------------------------------------------------------ #
# Script Name:   if3.sh 
# Description:   Check user'age to send it to the concert.
# Site:          https://medium.com/@amaurybsouza
# Linkedin:      www.linkedin.com/in/amaurybsouza/
# Written by:    Amaury
# Maintenance:   Amaury
# ------------------------------------------------------------------------ #
# Usage:         $ ./if3.sh
# ------------------------------------------------------------------------ #
# Bash Version:  4.4.19
# ------------------------------------------------------------------------ # 
# History:        v1.0 17/05/2019, Amaury:
#                - Start de program
#                - Add (ge) option for compare values
#                v1.1 17/05/2019, Amaury:
#                - Tested with if feature
# ------------------------------------------------------------------------ #

clear
echo Seja bem vindo ao programa $0

echo -n "Para saber se você pode ir no show, digite a sua idade: "
read idade
if [ $idade -ge 18 ]
then
        echo Você pode ir no show!
else
        echo Ops, você não pode ir nesse show!
fi

