#!/bin/sh

## third party repositories
#sudo add-apt-repository ppa:otto-kesselgulasch/gimp
#sudo add-apt-repository ppa:gnome3-team/gnome3-next
#sudo add-apt-repository ppa:gnome3-team/gnome3-staging
<<<<<<< HEAD

sudo apt-get -yq update
sudo apt-get -yq dist-upgrade
=======
#sudo apt-get -yq update
#sudo apt-get -yq dist-upgrade
>>>>>>> 7286f3830e05f60ab9c717f4cc311c6f2ab0ad83

## everything that needs installed
<<<<<<< HEAD
sudo apt-get -yq install \
    guake vim git gitk subversion lib32z1 lib32ncurses5 samba system-config-samba \
    cifs-utils winbind build-essential checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl \
    check rar unrar p7zip-rar p7zip zip unzip sharutils uudeview mpack arj cabextract file-roller filezilla \
    filezilla-common gimp gimp-data gimp-data-extras libaio1 openssh-server g++ curl libssl-dev apache2-utils \
    git-core gnome-shell gnome-shell-extensions gdm dos2unix alien htop libpq-dev \
    git-svn gawk apt-transport-https mercurial vim-gnome rlwrap libcurl4-openssl-dev libexpat1-dev \
    lsb-release scrot cloc cowsay pwgen fish python2.7 cmake
=======
#sudo apt-get -y -q install \
#    guake vim git gitk subversion lib32z1 lib32ncurses5 lib32bz2-1.0 samba system-config-samba \
#    cifs-utils winbind build-essential checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl \
#    check rar unrar p7zip-rar p7zip zip unzip sharutils uudeview mpack arj cabextract file-roller filezilla \
#    filezilla-common gimp gimp-data gimp-data-extras libaio1 openssh-server g++ curl libssl-dev apache2-utils \
#    git-core gnome-shell gnome-shell-extensions gdm dos2unix alien htop libpq-dev \
#    git-svn gawk apt-transport-https mercurial vim-gnome rlwrap libcurl4-openssl-dev libexpat1-dev \
#    lsb-release scrot cloc cowsay pwgen fish python2.7 cmake bridge-utils

#sudo apt-get -y -q install \
#    guake vim git gitk subversion build-essential rar unrar p7zip-rar p7zip zip unzip gimp gimp-data gimp-data-extras libaio1 \
#    openssh-server g++ curl libssl-dev apache2-utils git-core gnome-shell gnome-shell-extensions gdm dos2unix alien htop libpq-dev \
#    git-svn gawk apt-transport-https mercurial vim-gnome rlwrap libcurl4-openssl-dev libexpat1-dev cloc cowsay pwgen fish python2.7 \
#    cmake bridge-utils
>>>>>>> 7286f3830e05f60ab9c717f4cc311c6f2ab0ad83

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

wget -O screenfetch 'https://raw.github.com/KittyKatt/screenFetch/master/screenfetch-dev' && chmod +x screenfetch && sudo mv screenfetch /usr/local/bin

wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python && sudo easy_install pip

# wget -qO- https://get.docker.com/ | sh

# Install synergy

<<<<<<< HEAD
#wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
#sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu trusty-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
#sudo apt-get -yq update
#sudo apt-get -yq synergy
=======
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
#sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu trusty-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
sudo apt-get -y -q update
sudo apt-get -y -q synergy

# Install docker
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
#sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
#sudo apt-get -yq update
#sudo apt-get -yq install lxc-docker
>>>>>>> 7286f3830e05f60ab9c717f4cc311c6f2ab0ad83

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

## Fix Docker on VPN


#sudo ip link set dev docker0 down
#sudo brctl delbr docker0
#sudo iptables -t nat -F POSTROUTING
#sudo brctl addbr bridge0
#sudo ip addr add 192.168.5.1/24 dev bridge0
#sudo ip link set dev bridge0 up
#sudo ip addr show bridge0
#sudo echo 'DOCKER_OPTS="-b=bridge0"' >> /etc/default/docker
#sudo service docker restart
