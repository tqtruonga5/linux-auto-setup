#!/bin/bash
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
echo "--------\n"
java -version

# nodejs npm
sudo apt-get install -y python-software-properties
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs

# config npm with root 
cd ~
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'

#bash shell
echo '\nexport PATH=~/.npm-global/bin:$PATH' >> ~/.profile
source ~/.profile

#zshell
echo '\nexport PATH=~/.npm-global/bin:$PATH' >> ~/.zshrc
source ~/.zshrc
# -----------------------