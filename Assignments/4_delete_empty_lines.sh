<<doc 

Name: Shiva.K
Date: 14-06-2022 
Description: Delete empty lines from a file
Sample output:

 1. bash delete_empty_lines.sh test1.txt --> Empty lines are deleted
                                          Hello
                                          How
                                          are
                                          you?

2. bash delete_empty_lines.sh --> Error: Please pass the file name through command line.

doc



#!/bin/bash


if [ $# -eq 0 ]  # Checking if Command line argument is passed
then

    echo "Error: Please pass the file name through command line."

else  # Command line argument is passed by the user

    echo "Empty lines are deleted"

    sed -i '/^[[:space:]]*$/d' $1  # Sed command to remove empty lines in a file 

    cat $1  # Printing the contents of file after 'sed' operation

fi
