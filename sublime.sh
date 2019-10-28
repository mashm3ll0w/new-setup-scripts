#!/bin/bash

echo $'\n'$"Install Sublime Text and Sublime Merge..."
sleep 2

echo $'\n'$"Install the GPG key..."
sleep 2

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sleep 1
echo $'\n'$"Success..."
sleep 2

echo $'\n'$"Adding the stable channel to our sources..."
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sleep 1
echo $'\n'$"Success..."
sleep 2

echo $'\n'$"Updating our apt sources and installing..."
sudo apt update && sudo apt install sublime-text sublime-merge

echo $'\n'$"NOTE: visit https://packagecontrol.io/installation#st3 to install package control"
sleep 2

echo $'\n'$"Installation complete...exiting..."
sleep 2
exit
