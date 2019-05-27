#!/usr/bin/env bash
case $caracter in
[0-9])
echo “O caracter informado é um número“
;;
[A-Z])
echo “O caracter informado é uma letra maiúscula“
;;
[a-z])
echo “O caracter informado é uma letra minúscula“
;;
esac
