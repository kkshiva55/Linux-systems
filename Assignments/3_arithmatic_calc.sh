<<doc

Name: Shiva.K
Date: 09-06-2022
Description: Arithmetic calculator using command line Argument
Sample output:
     bash arithmatic_calc.sh 12 + 22 --> 12 + 22 = 34
     bash arithmatic_calc.sh 25 x 37 --> 25 x 37 = 925
     bash arithmatic_calc.sh 44 / 11 --> 44 / 11 = 4.00
     bash arithmatic_calc.sh 6.2 - 4.7 --> 6.2 - 4.7 = 1.5
     bash arithmatic_calc.sh --> Error : Please pass the arguments through command line.
     bash arithmatic_calc.sh 2.2 --> Error:Please pass 3 arguments.
doc



#!/ibin/bash

if [ $# -eq 0 ] #Checking if user has passed the command line argument
then
    echo "Error : Please pass the arguments through command line."
    echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"


   elif [ $# -lt 3 ] # Checking if user has passed 3 arguments
   then
       echo "Error:Please pass 3 arguments."
       echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"
   
   else # User has passed 3 arguments properly

       case $2 in # $2 is given as operator in command line argument

            +) sum=`echo "$1 + $3" | bc` # If $2 is +
                 echo "$1 $2 $3 = $sum"
                ;;

            -) sub=`echo "$1 - $3" | bc` # If $2 is -
                 echo "$1 $2 $3 = $sub"
                ;;

            x) mul=`echo "$1 * $3" | bc` # If $2 is x
                 echo "$1 $2 $3 = $mul"
                ;;

            /) div=`echo "scale = 2; $1 / $3" | bc` # If $2 is /
                 echo "$1 $2 $3 = $div"
                ;;

            *) echo "Invalid operator" #If $2 is *(default case)
                ;;
         esac
     fi

