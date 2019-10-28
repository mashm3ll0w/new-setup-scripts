#!/bin/bash

cat << _EOF_
#########################################################################
                This script installs Google Chrome...
#########################################################################
_EOF_
sleep 3

install() {
echo $'\n'$"Adding the stable channel to our sources..."
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sleep 1
echo $'\n'$"Successfully added..."
sleep 2

echo $'\n'$"Updating apt sources..."
sleep 2
sudo apt update
sleep 1
echo $'\n'$"Success..."
sleep 2

echo $'\n'$"Downloading the deb package file..."
pushd /tmp/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo ""
sleep 2
echo $'\n'$"Installing..."
sudo dpkg -i google-chrome-stable_current_amd64.deb
echo ""
echo $'\n'$"Successfully installed..."
sleep 1
echo $'\n'$"Adding Chrome to the sandbox profile..."
sudo firecfg
echo ""
echo $'\n'$"Cleaning up and exiting..."
rm google-chrome-stable_current_amd64.deb
popd
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
