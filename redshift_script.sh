#!/usr/bin/env bash
ME=/root
LOGNAME=root
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
LANG=en_US.UTF-8
SHELL=/bin/sh
PWD=/root


currenttime=$(date +%H:%M)
currentday=$(date +"%a")
echo $currenttime
echo $currentday

if [[  $currenttime > "20:00" && $currentday != "Sat" && $currentday != "Fri" ]];
then
	echo "Killing Blue"
	redshift -P -O 1000

else
	echo "Blue Light"
	redshift -x

fi

	
