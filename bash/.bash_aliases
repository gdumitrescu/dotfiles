# Aliases
alias ..='cd ..'
alias c='clear'
alias gti='git'
alias jj='juju'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
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
alias drmc='docker rm $(docker ps -a -q)'
# Delete all images
alias drmi='docker rmi $(docker images -q)'
# Delete volumes
alias drmv='docker volume rm $(docker volume ls -qf dangling=true)'

