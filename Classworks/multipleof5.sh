#!/bin/bash

read -p "Enter a number:" num

if [ `expr $num % 5` -eq 0 ]
then
    echo "$num is multiple of 5"
else
    echo "$num is not multiple of 5"
fi
