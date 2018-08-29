#!/bin/bash

tomcat="../Documents/Tomcat/bin/"

if [ "$1" = "start" ]
then
	exec "${tomcat}startup.sh"
fi

if [ "$1" = "stop" ]
then
	exec "${tomcat}shutdown.sh"
fi

