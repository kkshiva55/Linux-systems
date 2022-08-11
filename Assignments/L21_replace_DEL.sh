<<doc 

Name: Shiva.K
Date: 17-06-2022
Description: Replace randomly 20% of lines in a 'C' file
Sample output:

 1. bash replace_DEL.sh -->
    Error : Please pass the file name through command line.

 2. bash replace_DEL.sh file.c -->
    Error : No such a file.

 3. bash replace_DEL.sh demo.c -->
    Error : demo.c is empty file. So can’t replace the string.

 4. bash replace_DEL.sh add.c -->

    Before replacing
    #include <stdio.h>

    int main() {    

    int number1, number2, sum;
    
    printf("Enter two integers: ");

    scanf("%d %d", &number1, &number2);

    sum = number1 + number2;      
    
    printf("%d + %d = %d", number1, number2, sum);
    return 0;
    }
    After replacing
    <-----------Deleted------------>
    <-----------Deleted------------>
    int main() {    

    int number1, number2, sum;
    
    printf("Enter two integers: ");

    scanf("%d %d", &number1, &number2);

    sum = number1 + number2;      
    <-----------Deleted------------>
    printf("%d + %d = %d", number1, number2, sum);
    return 0;
    }

doc




#!/bin/bash


if [ $# -eq 0 ]   # Checking if command line argument is passed
then

    echo "Error : Please pass the file name through command line."


elif [ -f $1 ]  # Checking if passed file is present or not
then

    if [ -s $1 ]  # Checking if passed file is empty or not
    then

	 echo "Before replacing"

	 cat $1   # Displaying the contents before replacing

         line_len=`cat $1 | wc -l`  # Calculating no.of.lines

         range=`expr $line_len / 5`  # 20% lines to be replaced

          for replace in `seq $range`
          do

             r_num=`shuf -i 1-$line_len -n1`   # Generating a random number within no.of.lines in the passed file


             sed -i "$r_num s/.*/<-----------Deleted------------>/" $1   # Replacing the corresponding line in the passed file

          done

	    echo "After replacing"   

	    cat $1   # Displaying the contents of passed file after replacement

      else

	  echo "Error : $1 is empty file. So can’t replace the string."    # Error when passed file is empty

      fi


else

    echo "Error : No such a file."   # Error when passed file is available

fi
