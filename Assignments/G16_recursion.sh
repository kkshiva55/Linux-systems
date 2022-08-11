<<doc 

Name: Shiva.K
Date: 16-06-2022
Description: Recursive function to print each argument
Sample output: 

 1. bash recursion.sh who is this? --> who
                                       is
                                       this?

 2. bash recursion.sh --> Error : Pass the arguments through command line.

doc



#!/bin/bash



if [ $# -eq 0 ]  # Checking if user has passed command line arguments
then

    echo "Error : Pass the arguments through command line."

else  # User has passed the arguments properly

arr=($@)   # Storing Command line arguments in an array


function recursion()   # Defining a recursive function
{

    echo $1   # Print first element in the array

    arr=(`echo ${arr[@]:1}`)   # Modifying the elements of array by neglecting the first element

    len=${#arr[@]}   # Calculating the length of modified array

    if [ $len -eq 0 ]  # This condition will be true when array size becomes zero
    then 

        return   # Stopping the recursion when array size is equals to zero

    else

        recursion ${arr[@]}   # Calling the function recursively along with modified array
        
    fi


}

recursion $@    # Function call

fi
