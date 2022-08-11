#!/bin/bash

read -p "Enter the year:" year

mod4=`expr $year % 4`
mod100=`expr $year % 100`
mod400=`expr $year % 400`

if [ $mod4 -eq 0 -a $mod100 -ne 0 -o $mod400 -eq 0 ]
then
    echo "$year is leap year"
else
    echo "$year is not a leap year"
fi
