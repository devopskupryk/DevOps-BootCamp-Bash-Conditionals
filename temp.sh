#!/bin/bash

#checking if the argument has been provided:
[ $# -ne 1 ] && echo "Provide one string as an argumnet. You've provided $# argument(s)!" && exit 1

inputStr=$1
inputStrLen=${#inputStr}
tempSys=${inputStr:$inputStrLen-1:1}
temp=${inputStr:0:$inputStrLen-1}

if [ $tempSys == "C" ] || [ $tempSys == "c" ]; then
    let "result = $temp + 273"
    echo $result"K"
elif [ $tempSys == "K" ] || [ $tempSys == "k" ]; then
    let "result = $temp - 273"
    echo $result"C"
fi
