#!/bin/bash

read -p "Enter first and second number:" num1 num2

if [ `expr $num1 % $num2` -eq 0 ]
then
    echo "First num is multiple of second"

else
    echo "First num is not a multiple of second num"
fi
