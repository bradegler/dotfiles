
## git user
#sudo adduser --system --shell /bin/sh --gecos 'git version control' --group --disabled-password --home /home/git git

## third party repositories
#sudo add-apt-repository ppa:otto-kesselgulasch/gimp
#sudo add-apt-repository ppa:gnome3-team/gnome3-next
#sudo add-apt-repository ppa:gnome3-team/gnome3-staging
sudo apt-get update
sudo apt-get dist-upgrade


## everything that needs installed
sudo apt-get install \
    guake vim git gitk subversion lib32z1 lib32ncurses5 lib32bz2-1.0 synergy samba system-config-samba \
    cifs-utils winbind build-essential checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl \
    check rar unrar p7zip-rar p7zip zip unzip sharutils uudeview mpack arj cabextract file-roller filezilla \
    filezilla-common gimp gimp-data gimp-data-extras nginx libaio1 openssh-server g++ curl libssl-dev apache2-utils \
    git-core gnome-shell gnome-shell-extensions gdm dos2unix alien network-manager-vpnc tilda htop vagrant libpq-dev \
    git-svn monit gawk

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
