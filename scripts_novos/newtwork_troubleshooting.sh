#! /usr/bin/env bash


#SCRIPT PARA VERIFICAR PROBLEMAS DE REDE

function menuprincipal () {
	clear 
	echo " "
	echo "Troubleshooting de rede no Linux Debian Based!
		
		1 - Mostrar todas as interfaces
	       	2 - Efetuar teste de DNS
		3 - Efetuar teste de ping
		4 - Efetuar teste com traceroute
		5 - Mostrar a rota padrão
		0 - Sair do menu"
	echo " "
	echo -n "Opção escolhida: "
	read opcao
	case $opcao in
		1)
			function interfaces () {
				REDES=`ip link show`
				TIME=3
				read -p "Entre com uma URL da internet: "
				echo " "
				sleep $TIME
				echo "As interfaces do seu sistema são: $REDES"
				sleep $TIME
			}
			interfaces
			echo " "
			read -n1 -r -p "Press any key to continue..."
			menuprincipal
			;;

		2)
			function dns () {
				dsdsdsdsd
			}
			;;

		3)
			function ping () {
				sdsdsdsdsdsdsd
			}
			;;

		4)
			echo Saindo do sistema...
			sleep 2
			exit 0
			;;

	esac
}
menuprincipal
