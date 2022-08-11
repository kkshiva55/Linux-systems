#!/bin/bash

read -p "Enter the number: "  n

next=0
first=0
second=1

while [ $next -le $n ]
do
   echo $next
   first=$second
   second=$next
   next=`expr $first + $second`

done
