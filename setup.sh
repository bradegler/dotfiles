#!/bin/bash

WHERE=$1

if [ -z $1 ]; then
    WHERE=$HOME
fi

echo Creating links in $WHERE

bkp_dir=.backup.dotfiles  
dot_dir=$WHERE/.dotfiles

mkdir -p $bkp_dir

files=("bash_profile" "bashrc" "gitconfig" "profile" "vimrc" "shellvars" "shellpaths" "shellaliases" "shellactivities" "vim" "shellcolors")

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
