<<doc

Name: Shiva.K
Date: 09-06-2022
Description: Pattern 1
Sample output: 1
               1 2
               1 2 3
               1 2 3 4

doc

#!/bin/bash

read -p "Enter the length: " len #Getting input from user

for row in `seq $len` #outer Loop will run len times
do
    for col in `seq $row` #Inner loop will run row times
    do
        
        echo -n "$col " #Print row value
    done
   echo
done
