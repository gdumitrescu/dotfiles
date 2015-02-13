# Aliases
alias ..='cd ..'
alias c='clear'
alias gti='git'
alias q='exit'


# Getting the id of last-run container
alias dl='docker ps -l -q'
# Kill running containers
alias dkill='docker kill $(docker ps -q)'
# Delete all containers
alias drm='docker rm $(docker ps -a -q)'
# Delete all images
alias drmi='docker rmi $(docker images -q)'
