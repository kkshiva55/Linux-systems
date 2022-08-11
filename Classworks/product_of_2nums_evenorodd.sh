#!/bin/bash

read -p "Enter the two numbers:" num1 num2

mul=`expr $num1 \* $num2`


if [ `expr $mul % 2` -eq 0 ]
then
    echo "Product is even"

else
    echo "Product is odd"

fi
