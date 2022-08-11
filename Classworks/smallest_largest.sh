#!/bin/bash

read -p "Enter the number of elements: " n

for i in `seq $n`
do
    read  num

   if [ $i -eq 1 ]
   then
       max=$num
       min=$num


   elif [ $num -gt $max ]
   then
       max=$num
   
   elif [ $num -lt $min ]
   then
       min=$num
   fi

   
done

echo "$max is largest"
echo "$min is smallest"
