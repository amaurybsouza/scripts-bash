#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   system-backup.sh 
# Description:   Backup from /etc directory
# Site:          https://medium.com/@amaurybsouza
# Written by:    Amaury Souza
# Maintenance:   Amaury Souza
# ------------------------------------------------------------------------ #
# Usage:         
#       $ ./system-backup.sh
# ------------------------------------------------------------------------ #
# Tested on:  
#       Bash 4.2.46
# ------------------------------------------------------------------------ # 
# History:        v1.0 30/05/2020, Amaury:
#                - Start de program
#                - Add function
#                v1.1 30/05/2020, Amaury:
#                - Adding new variables
#                v1.2 30/05/2020, Amaury:
#                - Executing new tests in my system
# ------------------------------------------------------------------------ #
# Thankfulness: Amaury Souza
#
#VARIABLES --------------------------------------------------------------- #
ROOT_UID=0
data=`date +%d-%m-%y-%H:%M`
dir_source=/etc
dir_dest=/backup
#FUNCTIONS --------------------------------------------------------------- #
compact() {
	tar -cjvf $dir_dest/bkp-$data-usr.tar.bz2 $dir_source
}
isroot() {
	if [ "$UID" -ne "$ROOT_UID" ]
then
	echo ""
        echo "Must be root to run this script!"
	echo ""
        exit $E_NOTROOT
fi
}
#CODE -------------------------------------------------------------------- #
isroot
if [ -d $dir_dest ]
then
	compact
else
	if [ -f $dir_dest ]
	then
		echo "Not a dir $dir_dest it is a file"
		sleep 2
	else
		mkdir $dir_dest
		compact
	fi
fi
#FINISHED ---------------------------------------------------------------- #
