<<doc

Name: Shiva.K
Date: 09-06-2022
Description: Pattern 2
Sample output: 1
               2 3
               4 5 6
               7 8 9 10

doc

#!/bin/bash

read -p "Enter the length: " len #Getting input from user


inc=1 #Assigning a new variable equals one

for row in `seq $len` #outer Loop will run len times
do
   
    for col in `seq $row` #Inner loop will run row times
    do
       echo -n "$inc " #Print the inc value

       inc=`expr $inc + 1` #Stores the value which will get printed in next loop execution

    done
    echo
done
