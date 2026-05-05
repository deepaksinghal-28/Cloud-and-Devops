#!/bin/bash

check_services() {

services=("Daemon" "MSSQLSERVER" "firewalld")

for service in "${services[@]}"
do

    if systemctl is-active --quiet "$service"
    then
        echo "$service is running"
    else
        echo "$service is not running. Do you want to restart it? (yes/no)"
        echo "Enter choice:"
        read choice

        if [ "$choice" = "yes" ]; then
            sudo systemctl start "$service"

            if systemctl is-active --quiet "$service"
            then
                echo "$service has been started successfully"
            else
                echo "$service failed to start"
                exit 1
            fi

        else
            echo "Skipping $service"
        fi
    fi

done

}

check_services
