#!/bin/bash

#############################################################
#                                                           #
# NOME: InstalacaoZabbixAgent.sh                            #
#                                                           #
# AUTOR: Amaury B. Souza (amaurybsouza@gmail.com)           #
#                                                           #
# DATA: 27/10/2018                                          #
#                                                           #
# DESCRIÇÃO: O script faz a instalação do Zabbix Agent 3.4  #
#            em sistemas Debian/Ubuntu                      #
#                                                           #
# USO: ./InstalacaoZabbixAgent.sh                           #
#############################################################

echo "Digite o nome da Host: "
read HOSTNAME
echo "Digite o IP Zabbix Server: "
read SERVER

apt-get install -y wget
wget https://repo.zabbix.com/zabbix/4.0/debian/pool/main/z/zabbix-release/zabbix-release_4.0-2+stretch_all.deb
dpkg -i zabbix-release_4.0-2+stretch_all.deb 
apt-get install -y zabbix-agent

echo "
PidFile=/var/run/zabbix/zabbix_agentd.pid
LogFile=/var/log/zabbix/zabbix_agentd.log
LogFileSize=20
Include=/etc/zabbix/zabbix_agentd.d/
Hostname=$HOSTNAME
EnableRemoteCommands=1
LogRemoteCommands=1
Server=$SERVER
ServerActive=$SERVER
RefreshActiveChecks=120
ListenPort=10050
StartAgents=10
Timeout=3
DebugLevel=3
" > /etc/zabbix/zabbix_agentd.conf
 
systemctl restart zabbix-agent
systemctl enable zabbix-agent
exit
