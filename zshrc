export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"
autoload -U promptinit; promptinit

plugins=(
    git
    kube-ps1
    docker
    osx
    dotenv
    colored-man-pages
    colorize
    vi-mode
)

SPACESHIP_PROMPT_ORDER=(
  time
  user
  host
  dir
  git
  node
  ruby
  xcode
  swift
  golang
  php
  rust
  docker
  venv
  pyenv
  line_sep
  vi_mode
  char
  )
  # PROMPT
   SPACESHIP_CHAR_SYMBOL="λ "
   SPACESHIP_PROMPT_ADD_NEWLINE=false
   SPACESHIP_PROMPT_SEPARATE_LINE=false
   SPACESHIP_PROMPT_PREFIXES_SHOW=true
   SPACESHIP_PROMPT_SUFFIXES_SHOW=true
   SPACESHIP_PROMPT_DEFAULT_PREFIX=" "
   SPACESHIP_PROMPT_DEFAULT_SUFFIX=""
   # TIME
   SPACESHIP_TIME_SHOW=true
   SPACESHIP_TIME_PREFIX="at "
   SPACESHIP_TIME_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_TIME_FORMAT=false
   SPACESHIP_TIME_12HR=false
   SPACESHIP_TIME_COLOR="yellow"
   # USER
   SPACESHIP_USER_SHOW=false
   SPACESHIP_USER_PREFIX="with "
   SPACESHIP_USER_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_USER_COLOR="yellow"
   SPACESHIP_USER_COLOR_ROOT="red"
   # HOST
   SPACESHIP_HOST_SHOW=false
   SPACESHIP_HOST_PREFIX="at "
   SPACESHIP_HOST_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_HOST_COLOR="green"
   # DIR
   SPACESHIP_DIR_SHOW=true
   SPACESHIP_DIR_PREFIX="["
   SPACESHIP_DIR_SUFFIX="]"
   SPACESHIP_DIR_TRUNC=3
   SPACESHIP_DIR_COLOR="032"
   # GIT
   SPACESHIP_GIT_SHOW=true
   SPACESHIP_GIT_PREFIX=" "
   SPACESHIP_GIT_SUFFIX=""
   SPACESHIP_GIT_SYMBOL=" "
   # GIT BRANCH
   SPACESHIP_GIT_BRANCH_SHOW=true
   SPACESHIP_GIT_BRANCH_PREFIX="$SPACESHIP_GIT_SYMBOL ["
   SPACESHIP_GIT_BRANCH_SUFFIX="]"
   SPACESHIP_GIT_BRANCH_COLOR="178"
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
   # NODE
   SPACESHIP_NODE_SHOW=true
   SPACESHIP_NODE_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_NODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_NODE_SYMBOL="⬢ "
   SPACESHIP_NODE_DEFAULT_VERSION=""
   SPACESHIP_NODE_COLOR="green"
   # RUBY
   SPACESHIP_RUBY_SHOW=false
   SPACESHIP_RUBY_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_RUBY_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_RUBY_SYMBOL="💎 "
   SPACESHIP_RUBY_COLOR="red"
   # XCODE
   SPACESHIP_XCODE_SHOW_LOCAL=false
   SPACESHIP_XCODE_SHOW_GLOBAL=false
   SPACESHIP_XCODE_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_XCODE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_XCODE_SYMBOL="🛠 "
   SPACESHIP_XCODE_COLOR="blue"
   # SWIFT
   SPACESHIP_SWIFT_SHOW_LOCAL=false
   SPACESHIP_SWIFT_SHOW_GLOBAL=false
   SPACESHIP_SWIFT_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_SWIFT_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_SWIFT_SYMBOL="🐦 "
   SPACESHIP_SWIFT_COLOR="yellow"
   # GOLANG
   SPACESHIP_GOLANG_SHOW=true
   SPACESHIP_GOLANG_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_GOLANG_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_GOLANG_SYMBOL="🐹 "
   SPACESHIP_GOLANG_COLOR="cyan"
   # PHP
   SPACESHIP_PHP_SHOW=false
   SPACESHIP_PHP_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_PHP_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_PHP_SYMBOL="🐘 "
   SPACEHIP_PHP_COLOR="blue"
   # RUST
   SPACESHIP_RUST_SHOW=true
   SPACESHIP_RUST_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_RUST_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_RUST_SYMBOL="Ř "
   SPACESHIP_RUST_COLOR="red"
   # DOCKER
   SPACESHIP_DOCKER_SHOW=false
   SPACESHIP_DOCKER_PREFIX="on "
   SPACESHIP_DOCKER_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_DOCKER_SYMBOL="🐳 "
   SPACESHIP_DOCKER_COLOR="cyan"
   # VENV
   SPACESHIP_VENV_SHOW=false
   SPACESHIP_VENV_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_VENV_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_VENV_COLOR="blue"
   # PYENV
   SPACESHIP_PYENV_SHOW=false
   SPACESHIP_PYENV_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"
   SPACESHIP_PYENV_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
   SPACESHIP_PYENV_SYMBOL="🐍 "
   SPACESHIP_PYENV_COLOR="yellow"
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

RPS1='$(kube_ps1)'
