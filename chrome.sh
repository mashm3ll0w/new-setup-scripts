#!/bin/bash

cat << _EOF_
#########################################################################
                This script installs Google Chrome...
#########################################################################
_EOF_
sleep 3

install() {
echo $'\n'$"Adding the Google Repo to our sources..."
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
echo $'\n'$"Fetching the repository key..."
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

echo $'\n'$"Installing Chrome..."
sudo apt install google-chrome-stable
exit
}

remove(){
  echo $'\n'$"Removing Chrome... "
  sudo apt remove google-chrome-stable
  echo $'\n'$"Successfully removed Chrome... "
  sleep 2

  echo $'\n'$"Removing the sources list..."
  sudo rm /etc/apt/sources.list.d/google-chrome.list
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
