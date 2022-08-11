<<doc 

Name: Shiva.K
Date: 14-06-2022 
Description: Rename .jpg files with new name through command line argument
Sample output:

1. Before execution of script --> dir1 dir2 file.txt dp1.jpg dp2.jpg

2. After execution of script --> bash rename_album.sh image

  dir1 dir2 file.txt image1.txt image2.txt

3. Error message --> bash rename_album.sh

   Error : Please pass the prefix name through command line.

doc





#!/bin/bash



if [ $# -eq 0 ]  # Checking if user has passed the command line argument
then

    echo "Error : Please pass the prefix name through command line."

else  # User has passed the argument

    arr=(`ls *.jpg`)  # Storing ".jpg" files in an array

       for index in ${arr[@]}  # Changing file names one after the other
       do
           digit=`echo $index | tr -cd [:digit:]`  # Storing digits present in file name

           mv $index $1$digit.jpg  # Renaming

       done

   fi



