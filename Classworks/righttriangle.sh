#!/bin/bash

read -p "Enter side lengths of triangle:" hyp adj opp

hyp_2=`expr $hyp \* $hyp`
adj_2=`expr $adj \* $adj`
opp_2=`expr $opp \* $opp`

sum=`expr $adj_2 + $opp_2`

if [ $hyp_2 -eq $sum ]
then
    echo "It is a Right angled triangle"

else
    echo "It is not a Right angled triangle"

fi
