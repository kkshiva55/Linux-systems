<<doc 

Name: Shiva.K
Date: 14-06-2022 
Description: Rename all files by lowercase and all directories by upper case

Before execution of script --> Dir1 Dir2 Dir3 File1.txt File2.txt

After execution of script --> DIR1 DIR2 DIR3 file1.txt file.txt

doc



#!/bin/bash


arr=(`ls`)  # Storing current working directory in an array


for index in ${arr[@]} 
do

    if [ -f $index ]  # True if "$index" is a file
    then
    
         file=`echo $index | tr [A-Z] [a-z]`  # Changing file from uppercase to lowercase
         

         if [ $index != $file ]
         then
         
               mv $index $file  # Renaming 

           fi
    

    elif [ -d ${arr[1]} ]  # True if "$index" is a directory
    then

          dir=`echo $index | tr [a-z] [A-Z]`  # Changing directory from lowercase to uppercase

          if [ $index != $dir ]
          then

               mv $index $dir  # Renaming

           fi

      fi

  done


