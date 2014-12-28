#!/usr/bin/env bash

name="NAME-OF-CONNECTION"


uuid=$(nmcli con | grep $name | awk '{print $2}')
while [ "true" ]
do
	VPNCON=$(nmcli con status)
	if [[ $VPNCON != *$name* ]]; then
		echo "Disconnected, trying to reconnect..."
		(sleep 1s && nmcli con up uuid $uuid)
	else
		echo "Already connected !"
	fi
	sleep 30
done
