#################################
# Simple program name / common args shortening
#
alias ls 'ls --color=auto'
alias grep 'grep --color=auto'
alias fgrep 'fgrep --color=auto'
alias egrep 'egrep --color=auto'

alias ll 'ls -lha'
alias la 'ls -A'
alias l5 'ls -lhtra | tail -5'
alias pp 'ps -eLfww'
alias lessc 'less -R' # Lets color escape sequences carry through to less
alias morec 'more -R'
alias lesscolor 'less -R'
alias morecolor 'more -R'
alias tree 'tree -C'
alias web 'google-chrome'

alias _="sudo"

#################################
# git
alias g 'git'

#################################
# Common Curl Commands
alias cujs 'curl -H "Accept: application/json" -H "Content-Type: application/json" -w "\n" -i '
alias cujsLocalOrigin 'cujs -H "Origin: http://localhost"'

#################################
# Location jumps

alias to.tools 'cd /data/tools'
alias to.dev 'cd /data/dev'

#################################
# docker
alias d 'docker'
# Get latest container ID
alias dl 'docker ps -l -q'
# Get container process
alias dps 'docker ps'
# Get process included stop container
alias dpa 'docker ps -a'
# Get images
alias di 'docker images'
# Get container IP
alias dip "docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd 'docker run -d -P'
# Run interactive container, e.g., $dki base /bin/bash
alias dki 'docker run -i -t -P'
# Stop and Remove all containers
alias drmf 'docker stop (docker ps -a -q) and docker rm (docker ps -a -q)'
alias drmd 'docker rmi (docker images -f "dangling=true" -q)'
# Stop all containers
function dstop
    docker stop (docker ps -a -q)
end
# Remove all containers
function drm
    docker rm (docker ps -a -q)
end
# Remove all images
function dri
    docker rmi (docker images -q)
end
# Dockerfile build, e.g., $dbu tcnksm/test 
function dbu
    docker build -t=$1 .;
end

#################################
# Vagrant Aliases
alias v 'vagrant'
alias vup 'vagrant up'
alias vh 'vagrant halt'
alias vs 'vagrant suspend'
alias vr 'vagrant resume'
alias vrl 'vagrant reload'
alias vssh 'vagrant ssh'
alias vst 'vagrant status'
alias vp 'vagrant provision'
alias vdstr 'vagrant destroy'
# requires vagrant-list plugin
alias vl 'vagrant list'
# requires vagrant-hostmanager plugin
alias vhst 'vagrant hostmanager'

#################################
# Gradle Aliases
alias gr 'gradle'
alias gw 'gradlew'
