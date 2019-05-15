#!/bin/bash


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



