#!/bin/bash

sudo apt update;

# install utils packages
sudo apt install git curl gnome-sushi tree vlc -y;

# install dev-tools
sudo apt install python3-pip neovim nodejs;

pip install pyvim;
# INSTALA FONTES MS
sudo apt-get install ttf-mscorefonts-installer;
sudo apt install virtualbox virtualbox-guest-additions-iso virtualbox-ext-pack;
sudo usermod -a -G vboxusers $USER;
