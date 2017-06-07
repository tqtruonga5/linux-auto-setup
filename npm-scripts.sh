#!/bin/bash

# nodejs npm
sudo apt-get install -y python-software-properties
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

# config npm with root 
cd ~
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'

#bash shell
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.profile
source ~/.profile

#zshell
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.zshrc
source ~/.zshrc
# -----------------------