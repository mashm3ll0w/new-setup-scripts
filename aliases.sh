#!/bin/bash

# A script to create an aliases file and add my custom bash aliases

clear
cat << _EOF_
              This script creates and appends custom aliases from a predefined aliases textfile.
                                  To use this, you need the following:

                            1. A folder called "Scripts" Documents folder.
                            2. A textfile called "aliases.txt" that contains all your aliases
                            3. That's it...let the magic happen
_EOF_
sleep 5

echo $'\n'$"Checking if the .bash_aliases file exists..."
sleep 2

if [ -f ~/.bash_aliases ]; then
    echo $'\n'$"The file .bash_aliases already exists..."
    sleep 1
    echo $'\n'$"Do you want to erase it and apply the new aliases? [y/N]"
    read -n 1 choice
    
    if [ "$choice" == "y" ]; then
      ## clearing the contents of the aliases file
      echo $'\n'$"Clearing file..."
      sleep 2
      > /home/$USER/.bash_aliases

      ## append the aliases already defined in aliases.txt
      echo $'\n'$"Appending the new aliases..."
      sleep 2
      cat /home/$USER/Documents/Scripts/aliases.txt >> /home/$USER/.bash_aliases

      ## applying the aliases using the source command
      echo $'\n'$"Effecting the new aliases..."
      sleep 2
      source /home/$USER/.bash_aliases

      ## exiting the system
      echo $'\n'$"Successfully effected...exiting..."
      echo $'\n'$"NOTE: You have to restart the terminal to see the changes"
      sleep 2
      exit
    else
      ## exit the script if the input is no
      echo $'\n'$"No changes made...exiting"
      sleep 3
      exit
    fi
else
    ## create .bash_aliases file
    echo $'\n'$"The file doesn't exist, creating it for you..."
    sleep 2
    touch /home/$USER/.bash_aliases

    ## append the aliases already defined in aliases.txt
    echo $'\n'$"Appending your aliases from file..."
    sleep 2
    cat ./aliases.txt >> /home/$USER/.bash_aliases
    
    ## applying the aliases using the source command
    echo $'\n'$"Effecting your aliases..."
    sleep 2
    source ~/.bash_aliases
    
    ## exiting the system
    echo $'\n'$"Done...Enjoy your aliases"
    echo $'\n'$"NOTE: You have to restart the terminal to see the changes"
    sleep 5
    exit
fi