#!/bin/bash

source ~/.bash_profile
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -f "/google/devshell/bashrc.google" ]; then
  source "/google/devshell/bashrc.google"
fi
