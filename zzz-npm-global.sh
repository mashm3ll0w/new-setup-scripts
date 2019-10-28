#!/bin/bash

# A script to change the default installation folder for npm packages

# Get the current npm directory
clear
echo "Current npm directory is:"
npm config get prefix

# Create a new directory in the home folder
echo $'\n'$"Creating a hidden directory in home..."
mkdir ~/.npm-global

# Configure npm to use the new directory
echo $'\n'$"Changing the npm directory to our new directory..."
npm config set prefix '~/.npm-global'

# Export the path to the "profile" file.
echo $'\n'$"Adding the new path to our profile..."
export PATH=~/.npm-global/bin:$PATH

# Load the profile to take effect
echo $'\n'$"Sourcing the profile..."
source ~/.profile

echo $'\n'$"Voila!! All done!!"