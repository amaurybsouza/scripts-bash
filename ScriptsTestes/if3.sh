#!/bin/bash

clear
echo -n "Entre com um arquivo ou diretório existente do sistema: "
read dir
if [ -d $dir ]
then
	echo Isso é um diretório!
	echo Esse $dir tem um tamanho de: `du -sh $dir`
else
	echo Isso não é um diretório
fi
