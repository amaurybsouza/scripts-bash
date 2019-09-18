#! /usr/bin/env bash


#SCRIPT PARA VERIFICAR PROBLEMAS DE REDE

function menuprincipal () {
	clear 
	echo " "
	echo -e  "\033[05;31mTroubleshooting de rede no Linux Debian Based!\033[00;37m
		
		1 - Mostrar todas as interfaces
		2 - Verificar interfaces em estado==running
	       	3 - Efetuar teste de DNS
		4 - Efetuar teste de ping
		5 - Efetuar teste com traceroute
		6 - Mostrar a rota padrão
		0 - Sair do menu"
	echo " "
	echo -n "Opção escolhida: "
	read opcao
	case $opcao in
		1)
			function interfaces () {
				REDES=`ip link show`
				TIME=3
				#read -p "Entre com uma URL da internet: "
				#echo " "
				sleep $TIME
				echo -e "Displaying interfaces of the system:\n$REDES"
				sleep $TIME
			}
			interfaces
			echo " "
			read -n1 -r -p "Press any key to continue..."
			menuprincipal
			;;

		2) 
			function running () {
				TIME=2
				RED=`tput setaf 1`
				RUNN=`ifconfig -a | grep -i flags`
				echo -e "Running interfaces in your system:\n$RUNN" | tr [a-z] [A-Z]
				echo " "
				sleep $TIME
			}
			running
			echo " "
		       	read -n1 -r -p "Press any key to continue..."
			menuprincipal
			;;

		3)
			function dns () {
				ping -c5 google.com > /dev/null || ping -c5 8.8.8.8 > /dev/null
				if [ $? -eq 0 ]
				then
					echo Resolvendo teste com nome!
					sleep 3
					echo Ping ok!
				else
					echo Ping not working
				fi
			}
			dns
			echo " "
			read -n1 -r -p "Press any key to continue..."
			menuprincipal
			;;

		4)
			function ping () {
				sdsdsdsdsdsdsd
			}
			;;

		5)
			echo Saindo do sistema...
			sleep 2
			exit 0
			;;

		6)
			function rotas () {
				ROUTE=`route -n | grep -A 1 -i roteador`
				echo " "
				echo -e "The default route:\n$ROUTE"
			}
			read -n1 -r -p "Press any key to continue..."
			menuprincipal
			;;

	esac
}
menuprincipal
