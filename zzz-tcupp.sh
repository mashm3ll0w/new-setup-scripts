#!/bin/bash

greeting(){
echo ""
cat << _EOF_
######################################################################################################
                    CUPP... Select the option you would like to use:

                    r - Run Cup in iteractive mode
                    v - View version
                    h - View help
######################################################################################################
_EOF_



echo $'\n'$"Enter what you wish to do..."
read -n 1 choice;
  case $choice in 
                1) run;;
                2) version;;
                3) help;;
                *) echo "Not a valid choice: Please try again.";sleep 2;clear;greeting;; 
  esac


}


run() {
  if [ "$choice" == "r" ]; then
    echo $'\n'$"Running the script in interactive mode..."
    sleep 2
    python3 /home/$USER/git-apps/cupp/cupp.py -i
  fi
  greeting
}

version() {  
  if [ "$choice" == "v" ]; then
    echo $'\n'$"Printing the script version..."
    sleep 2
    python3 /home/$USER/git-apps/cupp/cupp.py -v; greeting
  fi
  greeting
}

help() {
  if [ "$choice" == "h" ]; then
    echo $'\n'$"Showing all options..."
    sleep 2
    python3 /home/$USER/git-apps/cupp/cupp.py -h; greeting
  fi
  greeting
}

# if
#   echo $'\n'$"Not a valid choice...exiting the app..."
#   sleep 3
#   greeting
# fi