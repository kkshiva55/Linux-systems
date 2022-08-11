<<doc 

Name: Shiva.K
Date:13-06-2022 
Description: A18 - print contents of a directory without ls command
Sample output:

1. bash output_ls.sh --> Desktop Documents Downloads ECEP MPLABXProjects Music output_ls.sh Pictures Public Templates user Videos

2. bash output_ls.sh ~ ~/user/ecep --> 

/home/emertxe:
Desktop Documents Downloads ECEP MPLABXProjects Music output_ls.sh Pictures Public Templates user Videos

/home/emertxe/user/ecep:
c ds ls mc

3. bash output_ls.sh ECE --> output_ls.sh: Cannot access ‘ECE’ : No such a file or directory.

doc



#!/bin/bash



if [ $# -eq 0 ] # Check if no command line arguments are passed
then
    
    echo * # For no command line arguments--> Print the contents of current working directory

else # Command line argument has been passed

    for dir in $@ # Passed arguments are executed one by one 
    do
        
        if [ -d $dir ] # Checking if user specified directory is present or not
        then
             
            cd $dir # Navigating to user specified directory
             
             echo "$dir:"
             
             echo * # Printing contents of directory
             
             echo # Spacing if more than one directory's contents is to be printed

        else # If user specified directory is not available
             
             echo "output_ls.sh: Cannot access ‘$dir’ : No such a file or directory."
          
       fi
   
    done
   
fi

