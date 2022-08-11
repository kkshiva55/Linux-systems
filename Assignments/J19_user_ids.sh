<<doc 

Name: Shiva.K
Date: 16-06-2022
Description: Listing user ID's between the given range
Sample output:

 1. bash user_ids.sh --> Total count of user ID between 500 to 10000 is: 2

 2. bash user_ids.sh 0 100 --> Total count of user ID between 0 to 100 is: 18

 3. bash user_ids.sh 200 100 --> Error : Invalid range. Please enter the valid range through CL.

 4. bash user_ids.sh 100 --> Error : Please pass 2 arguments through CL
                             Usage : ./user_ids.sh 100 200

                         
doc








#!/bin/bash

arr=(`cat /etc/passwd | cut -d":" -f3`)   # Storing user ID's in an array


if [ $# -eq 0 ]  # If command line argument is not passed --> Print user ID's ranging between 500 and 10000  
then

     count=0  # Assigning a random variable equal to zero

     for i in ${arr[@]}  # This loop will run through all user ID's
     do

        if [ $i -ge 500 -a $i -le 10000 ]  # Checking if user ID's within 500 and 1000
        then

             count=`expr $count + 1`  # Incrementing random variable to find no.of.users within range

        fi
   
     done

         echo "Total count of user ID between 500 to 10000 is: "$count


elif [ $# -eq 2 ]  # If command line argument contains two elements
then  

    if [ $1 -lt $2 ]  # Checking if user has given valid range
    then

        count=0

       for i in ${arr[@]}
       do
         
           if [ $i -ge $1 -a $i -le $2 ]  # Checking if user ID's is within the given range
           then
              
               count=`expr $count + 1`  # Incrementing to count no.of.users

           fi
   
        done

            echo "Total count of user ID between $1 to $2 is: "$count

      else   # User has given invalid range

            echo "Error : Invalid range. Please enter the valid range through CL."

       fi

else  # User has passed only one argument through command line

     echo "Error : Please pass 2 arguments through CL"

     echo "Usage : ./user_ids.sh 100 200"
     
 fi

