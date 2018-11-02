#!/bin/bash

if grep "$1" /etc/passwd > /dev/null
then
	echo "usuário existente"
else
	echo "usuário não existe nesse sistema"
fi
