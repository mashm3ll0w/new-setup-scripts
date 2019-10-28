#!/bin/bash

cat << _EOF_
#########################################################################
        This script installs or uninstalls balenaEtcher...
#########################################################################
_EOF_
sleep 3

install() {
echo $'\n'$"Adding the stable channel to our sources..."
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sleep 1
echo $'\n'$"Successfully added..."
sleep 2

echo $'\n'$"Install the GPG key..."
sleep 2
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
sleep 1
echo $'\n'$"Success..."
sleep 2

echo $'\n'$"Updating our apt sources and installing..."
sudo apt update && sudo apt install balena-etcher-electron


echo $'\n'$"Installation complete...exiting..."
sleep 2
exit
}

remove(){
  echo $'\n'$"Removing balenaEtcher... "
  sudo apt remove balena-etcher-electron
  echo $'\n'$"Successfully removed balenaEtcher... "
  sleep 2

  echo $'\n'$"Removing the sources list..."
  sudo rm /etc/apt/sources.list.d/balena-etcher.list
  sleep 1
  echo $'\n'$"Successfully removed... "
  sleep 1
  echo $'\n'$"Updating our apt sources... "
  sudo apt-get update
  echo $'\n'$"Uninstallation complete...exiting..."
  sleep 2
  exit
}

echo $'\n'$"Choose what you would like to do [i/R]"
read -n 1 choice;


if [ "$choice" == "i" ]; then
  install
elif [ "$choice" == "r" ]; then
  remove
else
  echo $'\n'"Invalid choice...exiting..."
  sleep 2
  exit
fi
