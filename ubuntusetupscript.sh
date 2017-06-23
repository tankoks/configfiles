#!/bin/sh -e
#kt vm install script

#Add Repos
sudo apt-get -y install wget
sudo add-apt-repository -y ppa:cwchien/gradle
sudo add-apt-repository -y ppa:overcoder/hexchat
sudo add-apt-repository -y ppa:maarten-fonville/android-studio
wget -qO - https://eddie.website/repository/keys/eddie_maintainer_gpg.key|sudo apt-key add -
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo add-apt-repository -y 'deb http://eddie.website/repository/apt stable main'
sudo apt-get update

#essential apps
sudo apt-get -y install build-essential
sudo apt-get -y install python2
sudo apt-get -y install python3
sudo apt-get -y install openjdk-8-jre-headless
sudo apt-get -y install openjdk-8-jdk-headless
sudo apt-get -y install gradle
sudo apt-get -y install python-pip
sudo apt-get -y install python3-pip
sudo apt-get -y install git
sudo apt-get -y install chromium
sudo apt-get -y install firefox
sudo apt-get -y install hexchat
sudo apt-get -y install airvpn
sudo apt-get -y install android-studio
sudo apt-get -y install gimp
sudo apt-get -y install freecad|sudo apt-get -f install
sudo apt-get -y install freecad
sudo apt-get -y install spotify-client
sudo apt-get -y install vlc browser-plugin-vlc
wget https://atom.io/download/deb -O atom.deb
sudo dpkg -i atom.deb
wget https://download.teamviewer.com/download/teamviewer_i386.deb -O teamviewer.deb
sudo dpkg -i teamviewer.deb
wget https://discordapp.com/api/download?platform=linux&format=deb -O discord.deb
sudo dpkg -i discord.deb
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-2.6.3-amd64.deb -O slack.deb
sudo dpkg -i slack.deb
rm *.deb



//TODO
//Franz, vnc,
#git config
git config --global user.name "ktan41"
git config --global user.email "ktan41@gatech.edu"

#vimconfig
sudo apt-get -y install vim
mkdir ~/.vim
mkdir ~/.vim/colors
wget -O ~/.vimrc https://raw.githubusercontent.com/tankoks/configfiles/master/.vimrc
wget -O ~/.vim/colors/monokai.vim https://raw.githubusercontent.com/tankoks/configfiles/master/vim/colors/monokai.vim

#Resources for Class
mkdir ~/CS1331
mkdir ~/CS1331/resources
wget -O ~/CS1331/resources/checkstyle-6.2.2.jar http://cs1331.gatech.edu/resources/checkstyle-6.2.2.jar

#VM Additions
#sudo apt-get -y install virtualbox-guest-additions-iso
#sudo mount /usr/share/virtualbox/VBoxGuestAdditions.iso /media/dev
#sudo sh /media/dev/VBoxLinuxAdditions.run
sudo apt-get dist-upgrade
sudo reboot
