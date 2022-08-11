#!/bin/bash

read -p "Enter the number: " num


dec=`expr $num - 1` #Decrementing given number

dvar=0 #Assuming dummy variable

for i in `seq 2 1 $dec` #Loop will execute upto num-1
do

    if [ `expr $num % $i` -eq 0 ] 
    then
        
          dvar=1 #Equals to 1 only when num is div by some other num

     fi
 done

 if [ $num -eq 1 ]
 then
     echo "$num is a composite number"

 elif [ $dvar -eq 0 ] #
 then
       echo "$num is a prime number"
 else 
       echo "$num is not a prime number"
  fi         
