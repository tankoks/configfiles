#!/bin/sh -e
#kt vm install script

#Essential Tools
sudo add-apt-repository -y ppa:cwchien/gradle
sudo apt-get update
sudo apt-get -y install build-essential
sudo apt-get -y install python2
sudo apt-get -y install python3
sudo apt-get -y install openjdk-8-jre-headless
sudo apt-get -y install openjdk-8-jdk-headless
sudo apt-get -y install gradle
sudo apt-get -y install python-pip
sudo apt-get -y install python3-pip
sudo apt-get -y install wget
sudo apt-get -y install git

#Resources for Class
mkdir ~/CS1331
mkdir ~/CS1331/resources
wget -O ~/CS1331/resources/checkstyle-6.2.2.jar http://cs1331.gatech.edu/resources/checkstyle-6.2.2.jar

#VM Additions
sudo apt-get install virtualbox-guest-additions-iso
sudo mount /usr/share/virtualbox/VBoxGuestAdditions.iso /media/dev
sudo sh /media/dev/VBoxLinuxAdditions.run
sudo reboot
