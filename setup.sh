#!/bin/bash

bkp_dir=.backup.dotfiles  
dot_dir=$HOME/.dotfiles

mkdir -p $bkp_dir

files=("bash_profile" "bashrc" "gitconfig" "profile" "vimrc" "shellvars" "shellpaths" "shellaliases" "shellactivities" "vim")

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