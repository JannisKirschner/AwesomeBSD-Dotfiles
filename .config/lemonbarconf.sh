#!/usr/bin/bash

Clock(){
	DATE=$(date "+%m.%d.%y")
	TIME=$(date "+%I:%M")
	echo -e "${DATE} ${TIME}"
}

Username(){
	echo -e "$(whoami)"
}

Hostname(){
	echo -e "$(hostname)"
}

Internalip(){
	echo -e "$(ifconfig em0 | grep "inet " | cut -d: -f2 | awk '{ print $2}')"
}

Externalip(){
	echo -e "$(curl ipecho.net/plain)"
}

while true; do
	echo -e "$(Clock)    >  $(Username) | $(Hostname) | $(Internalip) | $(Externalip)"
	sleep 1
done