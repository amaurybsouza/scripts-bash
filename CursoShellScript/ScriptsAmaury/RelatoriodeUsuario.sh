#!/bin/bash

#############################################################
#                                                           #
# NOME: RelatoriodeUsuario.sh                               #
#                                                           # 
# AUTOR: Amaury Borges Souza (amaurybsouza@gmail.com)       #
#                                                           #
# DATA: 17/09/2018                                          #
#                                                           #
# DESCRIÇÃO: O script gera um relatório dos dados do usuário#
#            no sistema.                                    #
#                                                           #
# USO: ./RelatoriodeUsuario.sh                              #
#############################################################

UIDUSUARIO=`id -u amaury`
NOMECOMPLETO=`cut -d : -f 5 /etc/passwd | grep Amaury`
USONOHOME=`du -sh /home/amaury/`
LASTLOGIN=`lastlog | grep amaury`

echo "RELATÓRIO DE USUÁRIOS DO SISTEMA:"
sleep 2
read -p "Informe o nome do usuário: "
echo ""
clear
echo "UID do usuário: $UIDUSUARIO"
echo
sleep 2
echo "Nome completo do usuário: $NOMECOMPLETO"
echo
sleep 2
echo "Total em uso no /home do usuário: $USONOHOME"
echo
sleep 2
echo "Informações do último login: $LASTLOGIN"
echo
sleep 2
echo "INFORMAÇÕES OBTIDAS CONFORME SOLICITADO!"
echo 
sleep 3
echo "FIM."
echo
