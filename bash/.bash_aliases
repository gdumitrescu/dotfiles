# Aliases
alias ..='cd ..'
alias c='clear'
alias gti='git'
alias q='exit'

# toggle touchpad
alias touchoff='xinput --set-prop "AlpsPS/2 ALPS GlidePoint" "Device Enabled" 0'
alias touchon='xinput --set-prop "AlpsPS/2 ALPS GlidePoint" "Device Enabled" 1'

# Docker
alias machine='docker-machine'
alias compose='docker-compose'
alias fig='docker-compose'

# Docker environment variables
alias de="env | grep DOCKER_"
# Getting the id of last-run container
alias dl='docker ps -l -q'
# Kill running containers
alias dkill='docker kill $(docker ps -q)'
# Delete all containers
alias drm='docker rm $(docker ps -a -q)'
# Delete all images
alias drmi='docker rmi $(docker images -q)'
