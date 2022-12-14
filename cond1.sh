#!/bin/bash

#checking if the argument has been provided:
[ $# -ne 1 ] && echo "Provide one string as an argumnet. You've provided $# argument(s)!" && exit 1

IFS=',' read -r -a array <<< "$1"
sum=0
for i in ${array[*]}; do
    if (( $i %2 == 0 )); then
        let "sum += $i"
    fi    
done 

echo $sum