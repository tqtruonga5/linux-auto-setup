#!/bin/bash

echo '==== download docker-ce deb file ===='
cd ~/Downloads
curl -O https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_17.03.1~ce-0~ubuntu-xenial_amd64.deb
ls -la ~/Downloads | grep docker
cd

echo '==== installing docker-ce ====='
sudo dpkg -i ~/Downloads/docker-ce_17.03.1~ce-0~ubuntu-xenial_amd64.deb

echo '==== configure to run docker without sudo ====='
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo service docker restart

echo '=== install docker-compose ==='
curl -L https://github.com/docker/compose/releases/download/1.12.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


