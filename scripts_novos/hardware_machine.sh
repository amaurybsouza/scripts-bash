#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   hardware_machine.sh 
# Description:   Show informations about machine hardware.
# Written by:    Amaury Souza
# Maintenance:   Amaury Souza
# ------------------------------------------------------------------------ #
# Usage:         
#       $ ./hardware_machine.sh
# ------------------------------------------------------------------------ #
# Bash Version:  
#              Bash 4.4.19
# ------------------------------------------------------------------------ #

function menuprincipal () {
clear
TIME=1
echo " "
echo HARDWARE MACHINE INFORMATION $0
echo " "
echo "Escolha uma opção abaixo para começar!

        1 - Verificar processador do desktop
	2 - Verificar kernel do sistema
	3 - Verificar softwares instalados
	4 - Versão do sistema operacional
       	5 - Verificar memória do equipamento
	6 - Verificar serial number
	7 - Verificar IP do sistema	 
	0 - Sair do menu"
echo " "
echo -n "Opção escolhida: "
read opcao
case $opcao in
	1)
		function processador () {
			CPU_INFO=`cat /proc/cpuinfo | grep -i "^model name" | cut -d ":" -f2 | sed -n '1p'`
			echo "Modelo de CPU: $CPU_INFO"
			sleep $TIME
		}	
		processador
		read -n 1 -p "<Enter> para menu principal"
		menuprincipal
		;;

	2)
		function kernel () {
			#Para sistemas RED HAT: cat /etc/redhat-release
			KERNEL_VERSION_UBUNTU=`uname -r`
			KERNEL_VERSION_CENTOS=`uname -r`
			if [ -f /etc/lsb-release ]
			then
				echo "Versão do kernel: $KERNEL_VERSION_UBUNTU"
			else
				echo "Versão do kernel: $KERNEL_VERSION_CENTOS"
			fi
		}
		kernel
		read -n 1 -p "<Enter> para menu principal"
		menuprincipal
		;;

	3)
		function softwares () {
			#while true; do (antes eu estava usando esse recurso para controlar o menu, depois para corrigir adicionei uma function)
			TIME=3
			echo " "
			echo "Escolha uma opção abaixo para listar os programas!
			
			1 - Listar programas do Ubuntu
			2 - Listar programas do Fedora
			3 - Instalar programas padrões
			4 - Voltar ao sistema"
			echo " "
			echo -n "Opção escolhida: "
			read alternative
			case $alternative in
				1)
					echo Listando todos os programas do sistema Ubuntu...
					sleep $TIME
					dpkg -l > /tmp/programas.txt
					echo A lista de programas foi gerada e está disponível no /tmp do seu sistema
					sleep $TIME
					echo " "
                                        echo "Você será redirecionado para o menu inicial do programa!" | tr [a-z] [A-Z]
					sleep $TIME
					;;
				2)
					echo Listando todos os programas do sistema Fedora...
					sleep $TIME
					yum list installed > /tmp/programas.txt
					echo A lista de programas foi gerada e está disponível no /tmp
					sleep $TIME
					;;
				3)
					echo Instalando pogramas padrões...
					LIST_OF_APPS="pinta brasero gimp vlc inkscape blender filezilla"
					#usar o comando aptitude do Linux para tratar o loop de programas.
					apt install aptitude -y
					aptitude install -y $LIST_OF_APPS
					;;
				4)
					echo Voltando para o menu principal...
					sleep $TIME
					;;	
			esac
		#done
		}		
		softwares
		menuprincipal
		;;
	
	4)
		function sistema () {
			VERSION=`cat /etc/os-release | grep -i ^PRETTY`
			if [ -f /etc/os-release ]
			then
				echo "A versão do seu sistema é: $VERSION"
			else
				echo "Sistema não suportado"
			fi
		}
		sistema
		read -n 1 -p "<Enter> para menu principal"
		menuprincipal
		;;


	5)
		function memory () {
			MEMORY_FREE=`free -m  | grep ^Mem | tr -s ' ' | cut -d ' ' -f 4`
			MEMORY_TOTAL=
			MEMORY_USED=
			echo Verificando a memória do sistema...
			echo "A memória livre desse sistema é: $MEMORY_FREE"	
		}
		memory
		read -n 1 -p "<Enter> para menu principal"
		menuprincipal
		;;

	6)
		function serial () {
			SERIAL_NUMBER=`dmidecode -t 1 | grep -i serial`
			echo $SERIAL_NUMBER
		}
		serial
		read -n 1 -p "<Enter> para menu principal"
		menuprincipal
		;;

	7)
		function ip () {
			IP_SISTEMA=`hostname -I`
			echo O IP do seu sistema é: $IP_SISTEMA
		}
		ip
		read -n 1 -p "<Enter> para menu principal"
		menuprincipal
		;;

	0) 
	       echo Saindo do sistema...
       	       sleep $TIME
	       exit 0
	       ;;

	*)
		echo Opção inválida, tente novamente!
		;;
esac
}
menuprincipal
