#!/bin/bash

echo $'\n'$"This script installs tilix terminal emulator..."
sleep 2

echo $'\n'$"Fetching the package..."
sleep 1
pushd ~/Downloads/
echo ""
wget https://github.com/gnunn1/tilix/releases/download/1.9.3/tilix.zip
echo $'\n'$"Done"
sleep 1
echo $'\n'$"Extracting the contents of package to home..."
sudo unzip tilix.zip -d /
sleep 2
echo $'\n'$"Completing the installation..."
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
sleep 2
echo $'\n'$"Installation complete...cleaning up..."
rm tilix.zip
echo ""
popd
sleep 2
echo $'\n'$"Clean...exiting"
sleep 2
exit