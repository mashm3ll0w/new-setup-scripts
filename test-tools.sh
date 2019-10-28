#! /usr/bin/env bash


## This script installs github packages
## The packages are: cupp, fluxion, ship
clear
cat << _EOF_ 
                  ###############################################################################################         
                  #                     This script installs the following 3 packages:                          #
                  #                                 CUPP, FLUXION and SHIP                                      #
                  #                                                                                             #
                  #          CUPP - Common User Passwords Profiler                                              #
                  #          FLUXION - MITM WPA attacks                                                         #
                  #          SHIP - A simple, handy network addressing multitool with plenty of features        #
                  ###############################################################################################
_EOF_
sleep 5


## PART 1
## Installing the dependencies required for both SHIP and FLUXION
echo $'\n'$"Installing dependencies for Fluxion and Ship..."
sleep 1
for pkg in dhcpd lighttpd php-cgi isc-dhcp-server grep iproute2 mtr iputils sed traceroute wget
  do
    which $pkg
    if [[ $? == 0 ]]; then
      echo $'\n'$"The dependency $pkg is already installed..."
    else
      sudo apt install $pkg -y
    fi
  done
sleep 2

## PART 2
## Creating a directory to house the packages
echo $'\n'$"Creating a directory to store the packages..."
mkdir /home/$USER/.my-git-apps/
sleep 1
pushd /home/$USER/.my-git-apps/
echo ""
sleep 1
echo ""

## PART 3
## Installing SHIP
echo $'\n'$"Fetching SHIP from GitHub..."
echo ""
sleep 1 
git clone --branch=master --depth 1 https://github.com/xtonousou/ship.git
echo $'\n'$"Download complete...configuring..."
echo ""
## Make the script executable
chmod 755 /home/$USER/.my-git-apps/ship/ship

## Exports the path to the bashrc file to allow us to run the command from anywhere...
##echo 'export PATH=/home/$USER/.my-git-apps/ship:$PATH'>>~/.bashrc

## Assign an alias so as to avoid the hustle of logging into the root account to run the script
echo $'\n'$"Adding ship to an alias..."
echo "alias ship='sudo ~/.my-git-apps/ship/ship'">>~/.bash_aliases 
echo $'\n'$"Finishing up..."
source ~/.bash_aliases
sleep 1
echo $'\n'$"Ship has been successfully installed..."
sleep 2

## PART 5
## Installing FLUXION
echo $'\n'$"Fetching FLUXION from GitHub..."
echo ""
sleep 1
git clone https://github.com/FluxionNetwork/fluxion.git
echo $'\n'$"Download complete...Configuring..."
sleep 1
echo -e "alias fluxion='cd ~/.my-git-apps/fluxion/ && sudo ./fluxion.sh'">>~/.bash_aliases
source ~/.bash_aliases
echo $'\n'$"Fluxion has been successfully installed..."
sleep 3

## PART 6
## Installing CUPP
echo $'\n'$"Fetching CUPP from GitHub..."
echo ""
sleep 1
git clone https://github.com/Mebus/cupp.git
echo $'\n'$"Download complete...Configuring..."
sleep 1
echo -e "alias cupp='python3 ~/.my-git-apps/cupp/cupp.py'">>~/.bash_aliases
source ~/.bash_aliases
sleep 1
popd
echo ""

## PART 7
## Finishing up and exiting
echo $'\n'$"All tools are ready to use...Launch a new terminal and enjoy yourself..."
echo ""
sleep 3
exit




## THIS PART IS FOR INSTALLING SHIP INTO THE ROOT ACCOUNT

## This app installs ship to the root directory

##Check root
# if [[ $EUID -ne 0 ]]; then
#   echo $'\n'$"Run the script as root, dumbass!!"
#   echo ""
# else
#   echo $'\n'$"Creating a directory in root..."
#   sleep 2
#   mkdir /root/.my-git-apps
#   echo $'\n'$"Directory created...cloning in..."
#   ## change directory
#   pushd /root/.my-git-apps/
#   sleep 2
#   echo $'\n'$"Fetching SHIP from GitHub..."
#   sleep 1 
#   echo ""
#   git clone --branch=master --depth 1 https://github.com/xtonousou/ship.git
#   echo ""
#   echo $'\n'$"Download complete...configuring..."
#   echo ""
#   cd ship/
#   echo ""
#   ## Make the script executable...
#   chmod 755 ship
#   ## Exports the path to the bashrc file to allow us to run the command from anywhere...
#   echo 'export PATH=/root/.my-git-apps/ship:$PATH'>>~/.bashrc
#   sleep 1
#   echo ""
#   echo $'\n'$"Finishing up..."
#   sleep 1
#   source ~/.bashrc
#   echo ""
#   popd
#   sleep 1
#   echo $'\n'$"Ship has been successfully installed for the root user...launch a new terminal session and enjoy..."
#   sleep 5
#   exit
# fi

