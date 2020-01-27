# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="agnoster"

plugins=(
    git
    kube-ps1
)

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

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history

source $HOME/.all_profile

autoload -Uz compinit && compinit

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix


local ret_status="%(?:%{$fg_bold[green]%}λ :%{$fg_bold[red]%}λ )"

#PROMPT='%F{15}[%F{99}%m%F{15}][%F{81}%3~%F{15}] ${ret_status} %f'
PROMPT='%F{15}[%F{81}%3~%F{15}]$vcs_info_msg_0_ ${ret_status} %f'
#RPROMPT=\
#PROMPT=' ${ret_status} %f'
#PROMPT='%F{15}[%F{99}%m%F{15}][%F{81}%3~%F{15}] %f%# '

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
#zstyle ':vcs_info:git:*' formats '%F{129}(%b)%f'
#zstyle ':vcs_info:git*' actionformats '%b (%a)'

zstyle ':vcs_info:*' stagedstr '%{%F{cyan}%B%}Ø%{%b%f%}'
zstyle ':vcs_info:*' unstagedstr '%{%F{yellow}%B%}µ%{%b%f%}'
zstyle ':vcs_info:git*' formats "%F{15}[%{$fg[green]%}%b%F{15}]%{$reset_color%}%m%u% "
zstyle ':vcs_info:git*' actionformats "[%b] (%a) %m%u%c "

precmd() {
    vcs_info
}

#RPROMPT=\$vcs_info_msg_0_
PROMPT='$(kube_ps1)'$PROMPT


if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
