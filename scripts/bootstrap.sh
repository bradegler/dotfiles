
## git user
#sudo adduser --system --shell /bin/sh --gecos 'git version control' --group --disabled-password --home /home/git git

## third party repositories
#sudo add-apt-repository ppa:otto-kesselgulasch/gimp
#sudo add-apt-repository ppa:gnome3-team/gnome3-next
#sudo add-apt-repository ppa:gnome3-team/gnome3-staging
sudo apt-get -yq update
sudo apt-get -yq dist-upgrade


## everything that needs installed
sudo apt-get -yq install \
    guake vim git gitk subversion lib32z1 lib32ncurses5 lib32bz2-1.0 synergy samba system-config-samba \
    cifs-utils winbind build-essential checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl \
    check rar unrar p7zip-rar p7zip zip unzip sharutils uudeview mpack arj cabextract file-roller filezilla \
    filezilla-common gimp gimp-data gimp-data-extras libaio1 openssh-server g++ curl libssl-dev apache2-utils \
    git-core gnome-shell gnome-shell-extensions gdm dos2unix alien htop libpq-dev \
    git-svn gawk apt-transport-https mercurial vim-gnome rlwrap libcurl4-openssl-dev libexpat1-dev

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p


# Install docker
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-get -yq update
sudo apt-get -yq install lxc-docker

# Add user to docker group so you don't have to sudo anymore
#sudo groupadd docker
#sudo gpasswd -a myusername docker
#sudo service docker restart

### Install
sudo apt-add-repository ppa:xorg-edgers/ppa
sudo apt-get -yq update
sudo apt-get -yq install nvidia-current nvidia-settings

### Uninstall

#sudo nvidia-settings --uninstall
#sudo apt-get remove --purge nvidia*
