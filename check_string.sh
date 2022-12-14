#!/bin/bash

#checking if the argument has been provided:
[ $# -ne 1 ] && echo "Provide one string as an argumnet. You've provided $# argument(s)!" && exit 1

Numbers=$(echo "$1" | tr -cd '0-9' | wc -m)
Symbols=$(echo "$1" | tr -cd '*!@#$%^&()_+' | wc -m)
Letters=$(echo "$1" | tr -cd 'a-zA-Z' | wc -m)

echo "Numbers: $Numbers Symbols: $Symbols Letters: $Letters"