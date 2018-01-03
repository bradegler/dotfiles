#!/bin/bash

########################################################################
# Bash Interactive Shell Setup
########################################################################

# Import the shell agnostic environment config
source ~/.profile


# When running two bash windows, allow both to write to the history, not one stomping the other
shopt -s histappend

# Keep multiline commands as one command in history
shopt -s cmdhist
export PATH=$PATH:/Users/BradEgler/bin

#source '/Users/BradEgler/lib/azure-cli/az.completion'
