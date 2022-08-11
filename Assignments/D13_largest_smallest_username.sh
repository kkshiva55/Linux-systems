<<doc 

Name: Shiva.K
Date: 16-06-2022
Description: Longest and Shortest user-names on the system
Sample output: 

   bash largest_username.sh -->
  
   lp
   gnome-initial-setup

doc





#!/bin/bash


arr=(`cut -d ":" -f1 /etc/passwd`)  # Storing all usernames in an array


max=${#arr[0]}  # Assuming length of first username as maximum


min=${#arr[0]}  # Assuming length of first username as minimum

len=`expr ${#arr[@]} - 1`  # Loop length

for i in `seq 0 $len`
do
    user_name=${arr[$i]}   # Storing username one by one to find longest or shortest 
    
    len_user=${#arr[$i]}   # Finding the username length one after the other 

    if [ $len_user -ge $max ]  # This condition is true if username is biggest compared to previous execution
    then

        max_word=$user_name  # Assigning username as longest 

        max=$len_user  # Assigning username length so that it will be compared on next "for loop" execution

    elif [ $len_user -le $min ]   # This condition is true if username is shortest
    then

        min_word=$user_name  # Assigning username as shortest

        min=$len_user  # Assigning username length for next "for loop" execution

    fi

done

  echo "$min_word"   # Printing longest username in the system

  echo "$max_word"    # Printing shortest username in the system
