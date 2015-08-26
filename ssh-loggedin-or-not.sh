#!/bin/bash
#
# Fahad Ahammed
# www.obakfahad.com
# ------------------------
loggedin=$(netstat -pn | grep 192.168.0.111 | awk  '{print $5}' | awk '{print substr($1,1)}' | awk '{print substr($0, 0, length($0)-2)}')
loggedin2=$(netstat -pn | grep 192.168.0.111 | awk  '{print $6}')
if [ "$loggedin" = "192.168.0.111" ]
then
	if [ "$loggedin2" = "ESTABLISHED" ]
	then
		echo "You are Logged In."
		
	else
		echo "You need to login."
		ssh root@192.168.0.111
		echo "Good Bye !!!"
	fi
else
	echo "You need to login."
	echo "Let us login."
	ssh root@192.168.0.111
	echo "Good Bye !!!"
fi

