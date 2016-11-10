#!/bin/sh

## third party repositories
#sudo add-apt-repository ppa:otto-kesselgulasch/gimp
#sudo add-apt-repository ppa:gnome3-team/gnome3-next
#sudo add-apt-repository ppa:gnome3-team/gnome3-staging

sudo apt-get -yq update
sudo apt-get -yq dist-upgrade

## everything that needs installed
sudo apt-get -yq install \
    guake vim git gitk subversion lib32z1 lib32ncurses5 samba system-config-samba \
    cifs-utils winbind build-essential checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl \
    check rar unrar p7zip-rar p7zip zip unzip sharutils uudeview mpack arj cabextract file-roller filezilla \
    filezilla-common gimp gimp-data gimp-data-extras libaio1 openssh-server g++ curl libssl-dev apache2-utils \
    git-core gnome-shell gnome-shell-extensions gdm dos2unix alien htop libpq-dev \
    git-svn gawk apt-transport-https mercurial vim-gnome rlwrap libcurl4-openssl-dev libexpat1-dev \
    lsb-release scrot cloc cowsay pwgen fish python2.7 cmake

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

wget -O screenfetch 'https://raw.github.com/KittyKatt/screenFetch/master/screenfetch-dev' && chmod +x screenfetch && sudo mv screenfetch /usr/local/bin

wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python && sudo easy_install pip

# wget -qO- https://get.docker.com/ | sh

# Install synergy

#wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
#sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu trusty-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
#sudo apt-get -yq update
#sudo apt-get -yq synergy

# Add user to docker group so you don't have to sudo anymore
#sudo groupadd docker
#sudo gpasswd -a begler docker
#sudo service docker restart

### Install
#sudo apt-add-repository ppa:xorg-edgers/ppa
#sudo apt-get -yq update
#sudo apt-get -yq install nvidia-current nvidia-settings

### Uninstall

#sudo nvidia-settings --uninstall
#sudo apt-get remove --purge nvidia*
