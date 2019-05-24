#!/usr/bin/env bash
 if test -d $1
 then
     echo "é um diretório"  
 elif test -f $1
 then
     echo "é um arquivo"  
 fi

