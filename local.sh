#!/bin/bash

. ./fucklist.sh

list=("${fucklist[@]}")

# a=0
# for i in "${fucklist[@]}"
#     do
#     echo "Fucking - $i"
#     sleep 1
#     a=$a+1
#     if [ $a -ge 5 ]; then
#       echo "HERE"
#     fi
# done

for (( i = 0 ; i < ${#list[@]}; i++ )) 
    do
    if [ "$i" -lt 10 ]; then
        echo ${list[i]};
        sleep 0.25 
        . ./fucklist.sh
        if [ "${list[0]}" != "${fucklist[0]}" ]; then
            echo "Restart"
        fi
    fi
done
