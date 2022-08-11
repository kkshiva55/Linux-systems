#!/bin/bash

read -p "Enter the number: " num

org=$num
n=0

while [ $num -gt 0 ]
do
   n=`expr $n \* 10`
   rem=`expr $num % 10`
   n=`expr $n + $rem`
   num=`expr $num / 10`

done

if [ $n -eq $org ]
then
    echo "$num is palindrome"

else
    echo "$num is not palindrome"
fi
