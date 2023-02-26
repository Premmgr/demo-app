#!/usr/bin/env bash

check_docker="systemctl status docker"
check_compose="docker-compose version"

if [[ $(${check_docker}) ]]
then
	echo "docker installed: OK"
else
	echo "docker installed: Failed"
	exit 1
fi

if [[ $(${check_compose}) ]]
then
        echo "docker-compose installed: OK"
else
        echo "docker-compose installed: Failed"
        exit 1
fi

exit 0


