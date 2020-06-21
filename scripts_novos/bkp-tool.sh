#!/usr/bin/env bash

#BACKUP=`tar -czvf $dir1.bkp.tar.gz $dir2`
clear
echo "################## WELCOME TO BACKUP TOOL ####################"
sleep 2
echo ""
echo -n "Type backup name: "
read dir1
echo ""
echo -n "Type directory name want to save: "
read dir2
echo ""
read -p "Press ENTER to continue or Ctrl+C to cancel!"
echo ""
echo "Creating backup..."
sleep 2
tar -czvf $dir1.bkp.tar.gz $dir2
echo ""
echo "Backup finished"
