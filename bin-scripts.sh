#!/bin/bash

## This command creates custom bin apps

## First, check if bin is created
echo $'\n'$"Checking directry status..."
sleep 3

if [ -d /home/$USER/bin/ ]; then
  echo $'\n'$"Directory exists"
  sleep 2
  
  echo $'\n'$"Adding the system-update script..."
  sleep 2
  cp ./bin-scripts/update.sh /home/$USER/bin/update
  echo $'\n'$"Done..."
  sleep 2
  
  echo $'\n'$"Adding the system-check script..."
  sleep 2
  cp ./bin-scripts/system-check.sh /home/$USER/bin/sys
  echo $'\n'$"Done..."
  sleep 2
  
  echo $'\n'$"Adding the weather-check script..."
  sleep 2
  cp ./bin-scripts/weather.sh /home/$USER/bin/sun
  echo $'\n'$"Done..."
  sleep 2
  
  echo $'\n'$"Exiting..."
  sleep 2
  exit
  
else
  echo $'\n'$"Directory does not exist..."
  sleep 2
  
  echo $'\n'$"Creating it for you..."
  mkdir /home/$USER/bin/
  sleep 1
  echo $'\n'$"Directory created"
  sleep 2

  echo $'\n'$"Adding the system-update script..."
  sleep 2
  cp .bin-scripts/update.sh /home/$USER/bin/update
  echo $'\n'$"Done..."
  sleep 2

  echo $'\n'$"Adding the system-check script..."
  sleep 2
  cp .bin-scripts/system-check.sh /home/$USER/bin/sys
  echo $'\n'$"Done..."
  sleep 2

  echo $'\n'$"Adding the weather-check script..."
  sleep 2
  cp .bin-scripts/weather.sh /home/$USER/bin/sun
  echo $'\n'$"Done..."
  sleep 2

  echo $'\n'$"Exiting..."
  sleep 2
  exit

fi