#!/bin/bash

## This script installs npm packages for development

for pkg in eslint body-parser jshint @angular/cli angular-cli-ghpages bootstrap electron ember-cli express ejs jquery electron-markdownify nodemon typescript popper.js request
do
  echo $'\n'$"Installing $pkg package..."
  npm install -g $pkg
done

echo $'\n'$"All packages finished installing...exiting..."
sleep 3
exit
