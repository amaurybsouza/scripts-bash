#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   firewalld.sh 
# Description:   Firewalld service management
# Site:          https://medium.com/@amaurybsouza
# Written by:    Amaury Souza
# Maintenance:   Amaury Souza
# ------------------------------------------------------------------------ #
# Usage:         
#       $ ./firewalld.sh
# ------------------------------------------------------------------------ #
# Tested on:  
#       Bash 4.2.46
# ------------------------------------------------------------------------ # 
# History:        v1.0 25/05/2020, Amaury:
#                - Start de program
#                - Add case feature
#                v1.1 25/05/2020, Amaury:
#                - Adding new variables
#                v1.2 25/05/2020, Amaury:
#                - Executing new tests in my system
# ------------------------------------------------------------------------ #
# Thankfulness:
#
# ------------------------------------------------------------------------ #

#VARIABLES --------------------------------------------------------------- #
ROOT_UID=0
SUCCESS=0
E_USEREXISTS=70

#CODE -------------------------------------------------------------------- #
if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "Must be root to run this script."
  exit $E_NOTROOT
fi

grep -q "$username" /etc/passwd
	if [ $? -eq $SUCCESS ] 
	then	
	echo "User $username does already exist."
  	echo "please choose another username."
	exit $E_USEREXISTS
	fi  

echo "Starting new script for user create"
echo ""
echo "Select an option below to start

1- Create complete user 
2- Create simple user
3- Delete user accounts
4- Change user configurations
5- Create new group
6- Delete groups
7- Change groups configurations
0- Exit user tool "
echo ""
echo -n "Select an option"
read option
case $option in
	1)
		echo "Amaury"

