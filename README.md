# Dotfiles

Collection of dotfiles / profile for both bash and zsh.

## Important

zsh must be installed before running the setup script or it will complain that it doesn't exist during installation of oh-my-zsh.

## Setup

Clone this repository into a directory name .dotfiles

```shell
git clone --recursive git://github.com/bradegler/dotfiles ~/.dotfiles
```

Then from your home directory run the install script like this

```shell
~/.dotfiles/setup.sh
```

The script is built to backup existing profile information and on a fresh run it doesn't guard against missing files so you will see a number of errors about missing files. 

```
Moving .all_profile
mv: cannot stat '.all_profile': No such file or directory
Moving .bash_profile
mv: cannot stat '.bash_profile': No such file or directory
Moving .bashrc
Moving .gitconfig
mv: cannot stat '.gitconfig': No such file or directory
Moving .profile
Moving .vimrc
mv: cannot stat '.vimrc': No such file or directory
Moving .shellpaths
mv: cannot stat '.shellpaths': No such file or directory
Moving .shellaliases
mv: cannot stat '.shellaliases': No such file or directory
Moving .shellactivities
mv: cannot stat '.shellactivities': No such file or directory
Moving .vim
mv: cannot stat '.vim': No such file or directory
Moving .tmux.conf
mv: cannot stat '.tmux.conf': No such file or directory
Moving .zshrc
Error detected while processing /home/bradegler/.vimrc:
line   56:
```

After that vim will prompt you to press enter during the plugin install phase. There is a circular dependency issue here as the entries need to be in the vimrc file inorder for plugin installation to occur, but the fact that one of the plugins isn't there causes vim to prompt you to continue. I have yet to find a work around for that.

```
E185: Cannot find color scheme 'hybrid_material'
Press ENTER or type command to continue
```

