<<doc 

Name: Shiva.K
Date: 17-06-2022
Description: Number of executable files in all directories of $PATH
Sample output:

 1. bash executable_path.sh -->

 Current dir: /usr/local/sbin
 current count: 0
 Current dir: /usr/local/bin
 current count: 0
 Current dir: /usr/sbin
 current count: 166
 Current dir: /usr/bin
 current count: 1225
 Current dir: /sbin
 current count: 152
 Current dir: /bin
 current count: 142
 Current dir: /usr/games
 current count: 1
 Current dir: /usr/local/games
 current count: 0
 Current dir: /opt/microchip/xc8/v2.20/bin
 current count: 6
 Current dir: /opt/microchip/xc8/v2.20/bin
 current count: 6
 Total – 1698

doc




#!/bin/bash


path=(`echo $PATH | tr ":" " "`)   # Storing all diretories from $PATH in an array


len_path=`expr ${#path[@]} - 1`  # Loop length to gothrough all directories

total=0   # Assigning a variable to count all executable files

for dir in `seq 0 $len_path`  
do
   
    if [ -d ${path[$dir]} ]   # Checking if such directory is present
    then

         cd ${path[$dir]}   # Changing path 

         list=(`ls -a`)   # Listing all files including hidden files in an array 

         len_list=`expr ${#list[@]} - 1`  # Loop length to check all files

         count=0  # Assigning a variable to count no.of.executable files

            for file in `seq 0 $len_list`
            do

	       if [ -f ${list[$file]} -a -x ${list[$file]} ]   # This will be True if such file exist and it is executable
	       then

	            count=`expr $count + 1`  # Incrementing to no.of.executable files

	       fi

            done

     echo "Current dir: "${path[$dir]}   # Displaying current path
   
     echo "current count: "$count   # Printing no.of.executable files in a directory

     total=`expr $total + $count`  # Counting total executable files 

     fi

 done

 echo "Total – "$total  # Printing total executable files present under $PATH

