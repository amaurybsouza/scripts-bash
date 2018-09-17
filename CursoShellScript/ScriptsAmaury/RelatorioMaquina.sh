#!/bin/bash

#############################################################
#                                                           #
# NOME: RelatorioMaquina.sh                                 #
#                                                           # 
# AUTOR: Amaury Borges Souza (amaurybsouza@gmail.com)       #
#                                                           #
# DATA: 16/09/2018                                          #
#                                                           #
# DESCRIÇÃO: O script gera um relatório com as principais   #
#            informações do servidor Linux/Debian.          #
#                                                           #
# USO: ./RelatorioMaquina.sh                                #
#############################################################

KERNEL=$(uname -r)
HOSTNAME=$(hostaname)
CPUNO=$(cat /proc/cpuinfo | grep "model name" | wc -l)
CPUMODEL=$(cat /proc/cpuinfo | grep "model name" | head -n1 | cut -c14-)
MEMTOTAL=$(expr $(cat /proc/meminfo | grep MemTotal | tr -d ' ' | cut -d: -f 2 | tr -d kb)) # Em MB
FILESYS=$(df -h | egrep -v '(tmpfs|udev)')
UPTIME=$(uptime -s)

clear
echo "========================================================================="
echo "Relatório da Máquina: $HOSTNAME"
echo "Data/Hora: $(date)"
echo "========================================================================="
echo
echo "Máquina ativa desde: $UPTIME"
echo
echo "Versão do kernel: $KERNEL"
echo 
echo "CPUs:"
echo "Quantidade de CPUs/Core: $CPUNO"
echo "Modelo da CPU: $CPUMODEL"
echo 
echo "Memória Total: $MEMTOTAL MB"
echo
echo "Partições:"
echo "$FILESYS"
echo
echo "========================================================================="
