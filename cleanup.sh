#!/bin/bash

WHERE=$1

if [ -z $1 ]; then
    WHERE=$HOME
fi


echo Removing oh-my-zsh
rm -rf ~/.oh-my-zsh

echo Removing links to profile files
files=(
    "all_profile" 
    "bash_profile" 
    "bashrc" 
    "gitconfig" 
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
        rm ".$file"
    fi

done

echo Restoring original files
bkp_dir=.backup.dotfiles  

for file in `ls $bkp_dir`
do
    mv $file ~/
done
