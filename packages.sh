#!/bin/bash

## This script installs some usefull packages
cat << _EOF_
                              Install some packages from the parrot repository.
                                        We'll install the following: 
                neofetch, steghide, putty & silversearcher-ag, youtube-dl, apt-transport-https
_EOF_
sleep 5

## create a for loop that loops through a given list of packages
## NOTE: skip putty-tools because it is a dependency of putty
for pkg in tilix neofetch steghide putty silversearcher-ag youtube-dl
do
  ## checks if the package is installed
  echo $'\n'$"Checking if $pkg is installed..."
  sleep 2
  which $pkg
  ## checks for the error if package is installed, if no error, means the package is installed
  if [ "$?" == "0" ]; then
    echo $'\n'$"The package $pkg is already installed.."
    sleep 2
  ## if there is an error, it means the package is not installed so it installs it for you
  else
    echo $'\n'$"The package $pkg is not installed...installing it now..."
    sleep 2
    sudo apt install -y $pkg
    echo $'\n'$"Installation complete..."
    sleep 3
  fi
done


echo $'\n'$"Testing if tilix works..."
for pkg in tilix  
  do
  $pkg
if [[ $? -ne 0 ]]; then 
  echo $'\n'$"Installing tilix the manual way..."
  pushd ~/Downloads/
  wget https://github.com/gnunn1/tilix/releases/download/1.9.3/tilix.zip
  sudo unzip tilix.zip -d /
  sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
  rm tilix.zip
  popd
  echo $'\n'$"Installation complete..."
  sleep 3
  exit
else  
  echo $'\n'$"Tilix is working fine..."
  sleep 3
  exit
fi


## Note to self
## silversearcher-ag has a different name for the package and the installed version..
## It checks for silversearcher-ag where it should be searching for ag but then if it searches for ag, it cant  ## install it as just ag, it has to be installed as silversearcher-ag


###Note to self 2
## find a way to test if an app works without having to open the actual app
