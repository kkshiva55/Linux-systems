<<doc 

Name: Shiva.K
Date: 09-06-2022
Description: Length of every string using command line argument
Sample output:
   
  bash string_length.sh who is this? --> Length of string (who) - 3
                                         Length of string (is) - 2
                                         Length of string (this?) - 5

 bash string_length.sh --> Error : Please pass the arguments through command-line.
doc


#!/bin/bash

arr=($@) # Storing command line arguments in an array


if [ $# -eq 0 ] # Checking if user has given any input
then
    echo "Error : Please pass the arguments through command-line."

else
    for i in `seq 0 ${#arr[@]}` # Executing the loop upto the length of the array
    do
       if [ ${#arr[$i]} -ne 0 ] # Avoiding the last element printing zero
       then
           echo "Length of string (${arr[$i]}) - ${#arr[$i]}" # Printing length of each and every string
       fi

    done
fi
