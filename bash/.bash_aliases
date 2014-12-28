# Aliases
alias ..='cd ..'
alias c='clear'
alias gti='git'
alias q='exit'

# Delete all containers
alias drm='docker rm $(docker ps -a -q)'
# Delete all images
alias drmi='docker rmi $(docker images -q)'
