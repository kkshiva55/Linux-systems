<<doc

Name: Shiva.K
Date: 09-06-2022
Description: Chess Board

doc

#!/bin/bash


#Chess board contains 8*8 blocks, so outer and inner loops each are executed 8 times

for row in `seq 8`
do
    for col in `seq 8`
    do
        sum=`expr $row + $col`
      

        if [ `expr $sum % 2` -eq 0 ] #If sum of row and col is even number, White colour will be displayed
        then
            echo -e -n "\e[47m" " "

        else #If sum is odd, Black colour will be displayed
            echo -e -n "\e[40m" " "

        fi
    done   

     echo -e -n "\e[0m" " " #Display normal colour on next line
   echo
done
