#!/bin/bash

########################################################################
# Bash Interactive Shell Setup
########################################################################

# Import the shell agnostic environment config
source ~/.all_profile

# When running two bash windows, allow both to write to the history, not one stomping the other
shopt -s histappend

# Keep multiline commands as one command in history
shopt -s cmdhist

export PS1="\
[\[$prompt_device_color\]\h\[$prompt_reset\]][\[$prompt_direct_color\]\w\[$prompt_reset\]]\
\$( is_on_git && \
  echo -n \"[\[$prompt_git_master_color\]\$(get_git_info_master)\" && \
  echo -n \"\[$prompt_git_branch_color\]\$(get_git_info_branch)\" && \
  echo -n \"\[$prompt_git_status_color\]\$(get_git_status)\" && \
  echo -n \"\[$prompt_git_progress_color\]\$(get_git_progress)\" && \
  echo -n \"\[$prompt_preposition_color\]]\")\[$prompt_reset\] $ "

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac
export PATH="$HOME/.cargo/bin:$PATH"
