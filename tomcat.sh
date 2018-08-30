#!/bin/bash

tomcat="../Documents/Tomcat/bin/"
tomcatport="8090"
if [ "$1" = "start" ]
then
	exec "${tomcat}startup.sh"
fi

if [ "$1" = "stop" ]
then
	exec "${tomcat}shutdown.sh"
fi

if [ "$1" = "status" ]
then
	status=`nmap -p $tomcatport localhost`
	echo $status
	if [[ $status = *"closed"* ]];
	then
		echo "Not running on port $tomcatport"
	else
		echo "Running on port $tomcatport"
	fi
fi
