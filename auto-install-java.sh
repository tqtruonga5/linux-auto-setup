#!/bin/bash
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
echo "--------\n"
java -version

# set up JAVA_HOME
sudo echo 'JAVA_HOME="/usr/bin"' >> /etc/environment

