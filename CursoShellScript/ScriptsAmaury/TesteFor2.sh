#!/bin/bash

for i in /etc/*
do
	if [ -f $i ]
	then
	     echo "Verificando o diretório $i"
	     LINHAS=`cat $i | wc -l`
	     echo "O diretório/arquivo contem $LINHAS linhas."
	     echo
     fi
done
