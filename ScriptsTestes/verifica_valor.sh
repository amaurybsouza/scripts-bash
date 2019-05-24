#!/usr/bin/env bash
  
clear
echo -n "Digite um valor: "
read valor
if [ "$valor" -gt 10 ]
then
        echo O nome do script é: $0
        echo O PID do script: $$
else
        echo valor menor
fi

