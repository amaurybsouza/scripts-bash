#!/usr/bin/env bash

if [ -d /bkp ]
then
	tar -czvf /bkp/meubackup.tar.gz /tmp
else
	if [ -f /bkp ]
	then
		echo "O diretório não existe, é um arquivo"
	else
		mkdir -v /bkp
		tar -czvf /bkp/meubackup.tar.gz /tmp
	fi
fi
