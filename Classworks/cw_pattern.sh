#!/bin/bash


for row in `seq 5 -1 1` 
do
    for col in `seq $row` 
    do
        
        echo -n "* " 
    done
   echo
done

echo

for row in `seq 5` 
do
    
    for col in `seq 5` 
    do 
        if [ $col -ge $row ]
        then
             echo -n "* "

         else
             echo -n "  "
        fi

     done

   echo

done

echo

for row in `seq 5` 
do
    
    for col in `seq 5` 
    do 
        add=0
        add=`expr $row + $col`

        if [ $add -gt 5 ]
        then
             
             if [ `expr $add % 2` -eq 0 ]
             then
                echo -n "1 "
               
                 else
                      echo -n "0 "
              fi

        else
            echo -n "  "
        fi        
     done

   echo

done

