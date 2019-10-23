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

# Kubernetes
alias k='kubectl'
alias k8='kubectl'

alias kapires="kubectl api-resources"
alias kapiver="kubectl api-versions"

alias kget="kubectl get"
alias kall="kubectl get all"
alias kallns="kubectl get all --all-namespaces"

alias kcj="kubectl get cronjobs"
alias kcrd="kubectl get customresourcedefinitions"
alias kdpl="kubectl get deployments"
alias kds="kubectl get daemonsets"
alias kep="kubectl get endpoints"
alias kev="kubectl get events"
alias khpa="kubectl get horizontalpodautoscalers"
alias king="kubectl get ingresses"
alias kno="kubectl get nodes"
alias kpo="kubectl get pods"
alias kpv="kubectl get persistentvolumes"
alias kpvc="kubectl get persistentvolumeclaims"
alias krs="kubectl get replicasets"
alias ksa="kubectl get serviceaccounts"
alias ksc="kubectl get storageclasses"
alias ksts="kubectl get statefulsets"
alias ksvc="kubectl get services"

alias kcfg="kubectl config"
alias kdlt="kubectl delete"
alias kdesc="kubectl describe"
alias klogs="kubectl logs"
alias kexec="kubectl exec"
alias kexpl="kubectl explain"
alias kexps="kubectl expose"

alias kcreate="kubectl create"
alias kapply="kubectl apply"

# kubectx helps you switch between clusters back and forth
alias ktx="kubectx"

# kubens helps you switch between Kubernetes namespaces
alias kns="kubens"
