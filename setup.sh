#!/bin/bash

WHERE=$1

if [ -z $1 ]; then
    WHERE=$HOME
fi

echo Creating links in $WHERE

bkp_dir=.backup.dotfiles  
dot_dir=$WHERE/.dotfiles

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

ZSH_CUSTOM=~/.oh-my-zsh/custom

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

mkdir -p $bkp_dir

files=(
    "all_profile" 
    "bash_profile" 
    "bashrc" 
    "gitconfig" 
    "gitignore" 
    "gitmailmap" 
    "profile" 
    "vimrc" 
    "shellpaths" 
    "shellaliases" 
    "shellactivities" 
    "vim" 
    "tmux.conf" 
    "zshrc")

for file in "${files[@]}"
do
    if [[ -L ".$file" ]]; then
        echo $file is a symbolic link
    else
        echo Moving .$file
        mv .$file $bkp_dir
        ln -s $dot_dir/$file .$file
    fi

done

vim +'PlugInstall --sync' +qa

