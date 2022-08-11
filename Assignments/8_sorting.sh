<<doc

Name: Shiva.K
Date: 15-06-2022
Description: Sorting the given number in ascending or descending order
Sample output:

     1. bash sorting.sh -a 12 5 4 2 -->
        Ascending order of array is 2 4 5 12

     2. bash sorting.sh -d 5 1 6 2 -->
        Descending order of array is 6 5 2 1

doc

  


                             
#!/bin/bash



if [ $# -le 1 ]  # Checking if user has passed command line arguments properly
then

    echo "Error : Please pass the argument through command line."
    echo "Usage : ./sorting -a/-d 4 23 5 6 3"


else  # User has passed command line arguments properly
       
      case $1 in  # Choice given by the user

          -a)    # User choosed ascending order to be performed
              
              arr=($@)  # Storing the values in array to perform sorting

              i_len=`expr $# - 1`  # Length of i-th loop 

                for i in `seq 1 $i_len`
                do

                  j_len=`expr $i_len - $i`  # Length of j-th loop

                    for j in `seq 1 $j_len`
                    do

                        if [ ${arr[j]} -gt ${arr[$(($j+1))]} ]  # Comparing adjacent numbers
                        then  # Swapping the numbers

                             var=${arr[$j]} 

                             arr[$j]=${arr[$(($j+1))]}

                             arr[$(($j+1))]=$var

                        fi

                     done

                 done

  echo "Ascending order of array is " ${arr[@]:1}

  ;;


       -d)  # User has choosed descending order to be performed
            # Rest of the coding is same except the "if condition"


           arr=($@)  

           i_len=`expr $# - 1`

              for i in `seq 1 $i_len`
              do

                 j_len=`expr $i_len - $i`

                   for j in `seq 1 $j_len`
                   do

                       if [ ${arr[j]} -lt ${arr[$(($j+1))]} ]
                       then

                            var=${arr[$j]}

                            arr[$j]=${arr[$(($j+1))]}

                            arr[$(($j+1))]=$var

                       fi

                   done

               done

  echo "Descending order of array is "${arr[@]:1}

  ;;
 

      *)  # If user has given invalid choice

          echo "Error : Please pass the choice."
          echo "Usage : ./sorting -a/-d 4 23 5 6 3"

  ;;

  esac

  fi
