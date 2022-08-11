<<doc 

Name: Shiva.K
Date: 14-06-2022 
Description: Arithmetic operation on given digits
Sample output:

1. bash operatordependent.sh 89251+ --> Sum of digits = 25

2. bash operatordependent.sh 95421- --> Subtraction of digits = -3

3. bash operatordependent.sh 1234x --> Multiplication of digits = 24

4. bash operatordependent.sh 543/ --> Division of digits = .41

5. bash operatordependent.sh 5322 --> 

     Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)

6. bash operatordependent.sh --> Error : Please pass the arguments through CL.
                                 Usage : ./operator_dependent.sh 2345+

                                 
doc







#!/bin/bash

if [ $# -eq 0 ]  # Checking if user has passed command line argument
then

    echo "Error : Please pass the arguments through CL."
    
    echo "Usage : ./operator_dependent.sh 2345+"

else  # User has passed the argument

    given=$1  # Storing input as offset
    
    sign=${given: -1}  # Storing operator (+,-,x,/)
    
    loop_len=`expr ${#given} - 2`  # For loop length
    
    case $sign in 

        +) sum=${given:0:1}  # First value of input
            
            
            for val in `seq $loop_len`
            do
              
                sum=`expr $sum + ${given:$val:1}`  # Adding input one by one
           
            done
         
            echo "Sum of digits = "$sum
          
            ;;

        
        -) sub=${given:0:1}  # First value of input

           
            for val in `seq $loop_len`
            do
               
                sub=`expr $sub - ${given:$val:1}`  # Subtracting input one by one
            
            done
            
            echo "Subtraction of digits = "$sub
            
            ;;

        
        x) mul=${given:0:1}  # First value of input

           
            for val in `seq $loop_len`
            do
               
                mul=`expr $mul \* ${given:$val:1}`  # Multiplying input one by one
            
            done
            
            echo "Multiplication of digits = "$mul
            
            ;;

        
        /) div=${given:0:1}  # First value of input

            
            for val in `seq $loop_len`
            do
               
                div=`echo "scale = 2; $div / ${given:$val:1}" | bc`   # Dividing input one by one
            
            done
            
            echo "Division of digits = "$div
            
            ;;

        
        *)    # If user gives incorrect operator
            echo "Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)"
            
            ;;

        

        esac

fi

       
