#!/bin/bash

## Update all packages and the entire system
  sudo apt clean -y && 
  sudo apt update && 
  sudo apt full-upgrade -y && 
  sudo apt dist-upgrade -y && 
  sudo parrot-upgrade -y && 
  sudo apt autoclean -y && 
  sudo apt autoremove -y