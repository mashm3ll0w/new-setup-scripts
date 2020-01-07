#!/bin/env bash

## This script changes the default grub, boot and lock screen images.
## The images are in the ./imgs folder

## IMPORTANT!!!
## THE IMAGES MUST BE 8bpc sRGB

#################################### 1920 x 1080 ##########################################
## 1. Change up the lockscreen
## Rename the old wallpaper
sudo mv /etc/lightdm/wallpaper.jpg /etc/lightdm/old.wallpaper.jpg.old

## Copy the new wallpaper over...
sudo cp ./imgs/wallpaper.jpg /etc/lightdm/
###########################################################################################

############################### 640 x 480 #################################################
## 2. Change up the grub-screen
## Rename the old wallpaper
sudo mv /usr/share/images/desktop-base/desktop-grub.png /usr/share/images/desktop-base/old.desktop-grub.png.old

## Copy the new wallpaper over...
sudo cp ./imgs/desktop-grub.png /usr/share/images/desktop-base/

## Update grub for the changes to take effect
sudo update-grub
###########################################################################################


###################################### 3840 x 2160 #########################################
## 3. Change the boot screen
## Rename old wallpaper
sudo mv /usr/share/plymouth/themes/parrot/background.png /usr/share/plymouth/themes/parrot/old.background.png.old 

## Copy the new image...
cp ./imgs/background.png /usr/share/plymouth/themes/parrot/
###########################################################################################


