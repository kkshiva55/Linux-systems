<<doc

Name: Shiva.K
Date: 13-06-2022 
Description: Shell script to convert string lower to upper and upper to lower
Sample output:

   bash upper_lower.sh --> Error : Please pass the file name through command line.

   bash upper_lower.sh empty.txt --> Error: No contents inside the file.

   bash upper_lower.sh myfile.txt -->

       1 – Lower to upper
       2 – Upper to lower
       Please select option : 1

      LINE NUMBER 1
      LINE NUMBER 2
      LINE NUMBER 3
doc
                                 

#!/bin/bash

if [ $# -eq 0 ] # Checking if user has passed arguments
then
    echo "Error : Please pass the file name through command line."


elif [ -s $1 ] # User has passed the arguments properly
then
    echo "1 – Lower to upper"
    echo "2 – Upper to lower"
    read -p "Please select option : " option # Selecting the option


case $option in

    1)  # Lower to upper
        cat $1 | tr a-z A-Z
        ;;

    2)  # Upper to lower
        cat $1 | tr A-Z a-z
        ;;

    esac

else # If user has passed the empty file
    echo "Error: No contents inside the file."
fi
