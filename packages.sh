#!/bin/bash

sudo apt update -y;

# install utils packages
sudo apt install git curl gnome-sushi tree vlc ttf-mscorefonts-installer -y;
sudo apt install virtualbox virtualbox-guest-additions-iso virtualbox-ext-pack -y;
sudo usermod -a -G vboxusers $USER;

# install dev-tools
sudo apt install python3-pip neovim nodejs;
# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf;
# asdf NodeJs
sudo apt install dirmngr gpg gawk -y;
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git;
asdf install nodejs latest;
asdf global nodejs latest;

sudo snap install code insomnia discord -y;

# install docker
# remove conflicting packages
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update -y;
sudo apt-get install ca-certificates curl -y;
sudo install -m 0755 -d /etc/apt/keyrings;
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc;
sudo chmod a+r /etc/apt/keyrings/docker.asc;
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$UBUNTU_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;
sudo apt-get update -y;
# install docker packages
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y;
sudo groupadd docker;
sudo usermod -aG docker $USER;

# neovim dependences
npm install -g neovim;
pip install pyvim;
