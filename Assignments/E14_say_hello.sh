<<doc 

Name: Shiva.K
Date: 16-06-2022
Description: Print greetings based on time
Sample output: 

 Good night user, Have nice day!
 This is wed 15 in Jun of 2022 (11:39:49 PM)

doc


#!bin/bash


now=`date +%H`  # Storing time

day=`date | cut -d " " -f1`  # Storing day

today_date=`date | cut -d " " -f3`  # Storing today's date

month=`date | cut -d " " -f2`  # Storing month

year=`date | cut -d " " -f6`  # Storing year

hour=`date | cut -d " " -f5`  # Storing hour

full_time=`date | cut -d " " -f4`  # Storing entire time


if [ $now -ge 5 -a $now -lt 12 ]  # Time between 5 AM and 11:59 AM
then

    echo "Good Morning user, Have nice day!"
   
    echo "This is $day $today_date in $month of $year ($full_time $hour)"

fi


if [ $now -ge 12 -a $now -lt 14 ]  # Time between 12 PM and 1:59 PM
then

    echo "Good noon user, Have nice day!"
   
    echo "This is $day $today_date in $month of $year ($full_time $hour)"

fi


if [ $now -ge 14 -a $now -lt 17 ]  # Time between 2PM and 4:59 PM
then

    echo "Good afternoon user, Have nice day!"
   
    echo "This is $day $today_date in $month of $year ($full_time $hour)"

fi


if [ $now -ge 17 -a $now -lt 21 ]  # Time between 5 PM and 8:59 PM
then

    echo "Good evening user, Have nice day!"
   
    echo "This is $day $today_date in $month of $year ($full_time $hour)"

fi

if [ $now -ge 21 -o $now -lt 5 ]  # Time between 9 PM and 4:59 AM
then
   
    echo "Good night user, Have nice day!"
   
    echo "This is $day $today_date in $month of $year ($full_time $hour)"

fi
