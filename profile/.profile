function git_branch(){
  b=`git symbolic-ref HEAD 2> /dev/null | cut -d/ -f3-`
  if [ -n "$b" ]; then
    echo " ($b)" 
  fi
}

PS1="\n-- [ \w ]\[\033[0;32m\]\$(git_branch)\[\033[0m\] [\D{%a, %b %d %T}]\n-- $ "

export CLICOLOR=1
export LSCOLORS=GxFxCxdxbxegedabagacad
alias ls="ls -G"
