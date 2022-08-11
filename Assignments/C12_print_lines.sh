<<doc 

Name: Shiva.K
Date: 13-06-2022 
Description: A12 - Printing number of lines
Sample output: 
      
  bash print_lines.sh 7 3 myfile.txt --> line number 7
                                         line number 8
                                         line number 9

  bash print_lines.sh myfile.txt --> Error: arguments missing!
                                     Usage: ./file_filter.sh start_line upto_line filename
                                     For eg. ./file_filter.sh 5 5 <file>

  bash print_lines.sh 2 12 myfile.txt --> Error: data.txt is having only 10 lines. file should have atleast 13 lines

doc



#!/bin/bash



if [ $# -lt 3 ] # Checking if 3 arguments are passed
then
    echo "Error: arguments missing!"
    echo "Usage: ./file_filter.sh start_line upto_line filename"
    echo "For eg. ./file_filter.sh 5 5 <file>"

elif [ $# -eq 3 ] # 3 arguments are passed properly
then
    add=`expr $1 + $2`

    high=`expr $add - 1` # Highest line possible to print

    tot_lines=`cat $3 | wc -l` # Number of lines in the file


     if [ $tot_lines -ge  $high ] # Checking if user input is within the limit
     then

           sum=`expr $1 + $2`

           head_value=`expr $sum - 1` # Last line number
          
           head -$head_value $3 | tail -$2 # Printing the require number of lines

         else 
             echo "Error: data.txt is having only $tot_lines lines. file should have atleast $high lines"
         fi
fi           


