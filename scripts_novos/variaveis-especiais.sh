#!/usr/bin/env bash

echo "Linha de comando: $0"
echo "Seu primeiro argumento é: $1"
echo "Seu quarto argumento é: $4"
echo "Ele tem um total de $# argumentos"
echo "São eles: $*"
echo "Ou, protegidos, são eles: $@"
echo "O PID deste processo é $$"
echo "E o código de retorno é: $?"
echo "Comando completo: $0"
