#!/bin/bash

#############################################################
#                                                           #
# NOME: ExemploUntil.sh                                     #
#                                                           # 
# AUTOR: Amaury Borges Souza (amaurybsouza@gmail.com)       #
#                                                           #
# DATA: 27/09/2018                                          #
#                                                           #
# DESCRIÇÃO: O script espera até que o Firefox seja         #
#            iniciado.                                      #
#                                                           #
#                                                           #
# USO: ./ExemploUuntil.sh                                   #
#############################################################

until ps axu| grep firefox | grep -v grep > /dev/null
do
	echo Inicie o Firefox
	sleep 3
	echo
done

echo Firefox Iniciado
echo PID: $(pgrep firefox )

