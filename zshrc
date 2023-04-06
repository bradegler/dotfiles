export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"
autoload -U promptinit; promptinit

plugins=(
    git
    macos
    dotenv
    colored-man-pages
    colorize
    vi-mode
)

SPACESHIP_PROMPT_ORDER=(
  time
  host
  dir
  git
  line_sep
  vi_mode
  char
  )
   SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true
  # PROMPT
   SPACESHIP_CHAR_SYMBOL="λ "
   SPACESHIP_PROMPT_ADD_NEWLINE=false
   SPACESHIP_PROMPT_SEPARATE_LINE=false
   SPACESHIP_PROMPT_PREFIXES_SHOW=true
   SPACESHIP_PROMPT_SUFFIXES_SHOW=true
   SPACESHIP_PROMPT_DEFAULT_PREFIX=" "
   SPACESHIP_PROMPT_DEFAULT_SUFFIX=""
   # TIME
   SPACESHIP_TIME_SHOW=false
   SPACESHIP_TIME_PREFIX="at "
   SPACESHIP_TIME_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_TIME_FORMAT=false
   SPACESHIP_TIME_12HR=false
   SPACESHIP_TIME_COLOR="yellow"
   # HOST
   SPACESHIP_HOST_SHOW=true
   SPACESHIP_HOST_PREFIX=" "
   SPACESHIP_HOST_SUFFIX="|"
   SPACESHIP_HOST_COLOR="green"
   SPACESHIP_HOST_COLOR_SSH="cyan"
   # DIR
   SPACESHIP_DIR_SHOW=true
   SPACESHIP_DIR_PREFIX=" ["
   SPACESHIP_DIR_SUFFIX="]"
   SPACESHIP_DIR_TRUNC=3
   SPACESHIP_DIR_COLOR="032"
   # GIT
   SPACESHIP_GIT_SHOW=true
   SPACESHIP_GIT_PREFIX=""
   SPACESHIP_GIT_SUFFIX=""
   SPACESHIP_GIT_SYMBOL=""
   # GIT BRANCH
   SPACESHIP_GIT_BRANCH_SHOW=true
   SPACESHIP_GIT_BRANCH_PREFIX="$SPACESHIP_GIT_SYMBOL ["
   SPACESHIP_GIT_BRANCH_SUFFIX="]"
   SPACESHIP_GIT_BRANCH_COLOR="168"
   # GIT STATUS
   SPACESHIP_GIT_STATUS_SHOW=true
   SPACESHIP_GIT_STATUS_PREFIX=" ["
   SPACESHIP_GIT_STATUS_SUFFIX="]"
   SPACESHIP_GIT_STATUS_COLOR="red"
   SPACESHIP_GIT_STATUS_UNTRACKED="?"
   SPACESHIP_GIT_STATUS_ADDED="+"
   SPACESHIP_GIT_STATUS_MODIFIED="!"
   SPACESHIP_GIT_STATUS_RENAMED="»"
   SPACESHIP_GIT_STATUS_DELETED="✘"
   SPACESHIP_GIT_STATUS_STASHED="$"
   SPACESHIP_GIT_STATUS_UNMERGED="="
   SPACESHIP_GIT_STATUS_AHEAD="⇡"
   SPACESHIP_GIT_STATUS_BEHIND="⇣"
   SPACESHIP_GIT_STATUS_DIVERGED="⇕"
   # VI_MODE
   SPACESHIP_VI_MODE_SHOW=true
   SPACESHIP_VI_MODE_PREFIX=""
   SPACESHIP_VI_MODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_VI_MODE_INSERT=" "
   SPACESHIP_VI_MODE_NORMAL=">"
   SPACESHIP_VI_MODE_COLOR="yellow"

source $ZSH/oh-my-zsh.sh

setopt NO_CASE_GLOB
setopt AUTO_CD
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt CORRECT
setopt CORRECT_ALL

#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history

source $HOME/.all_profile

autoload -Uz compinit && compinit

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export EDITOR=vi
export KEYTIMEOUT=1
set -o vi
bindkey -v

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit

prompt_spaceship_setup

[ -f /etc/bash_completion.d/hgd ] && source /etc/bash_completion.d/hgd

#RPS1='$(kube_ps1)'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/bradegler/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/bradegler/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/bradegler/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/bradegler/google-cloud-sdk/completion.zsh.inc'; fi

eval "$(goenv init -)"
export GPG_TTY=$(tty)
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

