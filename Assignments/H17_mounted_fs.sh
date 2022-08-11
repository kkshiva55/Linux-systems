<<doc 

Name: Shiva.K
Date: 16-06-2022
Description: Determine whether the given file system is mounted or not
Sample output: 

 1. bash mounted_fs.sh UbuntuFiles -->
    File-system UbuntuFiles is mounted on /media/sf_UbuntuFiles and it is having 39% used space with 146G free

 2. bash mounted_fs.sh electro -->
    electro is not mounted.

 3. bash mounted_fs.sh -->
    Error : Please pass the name of the file-system through command line.

doc




#!/bin/bash


name=(`df -h | cut -d" " -f1`)  # Storing file-system names into an array

 
avail=(`df -h | tr -s " " | cut -d" " -f4`)  # Storing available spaces into an array


percent=(`df -h | tr -s " " | cut -d" " -f5`)  # Storing used space % into an array


mount=(`df -h | tr -s " " | cut -d" " -f6`)   # Storing mount paths into an array


loop_len=`expr ${#name[@]} - 1`   # Finding loop length



if [ $# -eq 0 ]  # Checking if user has passed the command line argument
then

    echo "Error : Please pass the name of the file-system through command line."

else   # User has passed command line arguments properly

    d_var=0  # Assigning a duplicate variable

     
    for index in `seq $loop_len`
    do

        if [ ${name[$index]} = $1 ]  # Comparing command line argument data with names of file-system
        then

             echo "File-system ${name[$index]} is mounted on ${mount[$index]} and it is having ${percent[$index]} used space with ${avail[$index]} free."

             d_var=1   # Duplicate variable value is changed

        fi

     done


   if [ $d_var -eq 0 ]   # This condition is true if user gives incorrect file-system
   then

        echo "$1 is not mounted."

    fi

 fi
