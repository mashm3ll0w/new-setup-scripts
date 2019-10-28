#!/bin/bash

## This script checks for the weather in a given city

clear
echo "This script checks for the weather forecast for the next 3 days for any place in the world..."
sleep 3

echo $'\n'$"Use an underscore _ for cities with 2 or more names..."
sleep 3

echo ""

## Prompts the user for the city
read -p "Enter city to check weather: " city;

## Checks if the user has supplied an entry
if [ ! -z "$city" ];      ## if the variable city is not empty {if [ ! -z "$city" ]}
then
## If city is entered, echo that and show the results for the city entered
  echo $'\n'$"Here's the weather forecast for $city..."
  sleep 2
  curl v2.wttr.in/$city
else
## If no city entered, return results for the default location
  echo $'\n'$"No city supplied...here's the weather for your default locale..."
  sleep 2
  curl v2.wttr.in  
fi