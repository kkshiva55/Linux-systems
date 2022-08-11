<<doc 

Name: Shiva.K
Date: 15-06-2022
Description: system_info.sh
Sample output: bash system_info.sh -->

1. Currently logged users
2. Your shell directory
3. Home directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information.
10. Memory Informations
11. File system information.
12. Currently running process.
Enter the choice : 3
Home directory is /home/emertxe
Do you want to continue (y/n) ? n

doc



#!/bin/bash


option="y"  # To enter into the while loop

while [ $option = "y" ]
do

# Displaying menu 
    
echo "1. Currently logged users      
2. Your shell directory
3. Home directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information.
10. Memory Informations
11. File system information.
12. Currently running process."

read -p "Enter the choice : " choice  # Choice selection

  case $choice in

    1)  # Currently logged users

        logged_user=`who`

        echo "Currently logged users are "$logged_user
        ;;

    2)  # Shell directory

        shell_dir=`echo $SHELL`

        echo "Your shell directory is "$shell_dir
        ;;

    3)  # Home directory

        home_dir=`echo $HOME`

        echo "Home directory is "$home_dir
        ;;

    4)  # OS name and version

        os=`uname -a`

        echo "OS name & version are "$os
        ;;

    5)  # Current working directory

        cur_dir=`pwd`

        echo "Current working directory is "$cur_dir
        ;;

    6)  # Number of users logged in

        users=`whoami`

        echo "Number of users logged in are "$users
        ;;

    7)  # All available shells

        shell=`cat /etc/shells`

        echo "All available shells are --> "$shell
        ;;

    8)  # Hard disk information

        hdd=`hwinfo`

        echo "Hard disk information --> "$hdd
        ;;

    9)  # CPU information

        cpu=`cat /proc/cpuinfo`

        echo "CPU information. --> "$cpu
        ;;

    10)  # Memory information

        mem=`cat /proc/meminfo`

        echo "Memory information. --> "$mem
        ;;

    11) # File system information

        fileinfo=`df -h`

        echo "File system information. --> "$fileinfo
        ;;

    12)  # Currently running process

        cur_run=`ps`

        echo "Currently running process. --> "$cur_run
        ;;

    *) # If user has given invalid option

        echo "Error : Invalid option, please enter valid option"

  esac

  read -p "Do you want to continue (y/n) ? " option  # Asking user for displaying menu again

done
