#!/usr/bin/env bash

# configure Cloud9

#echo "" | tee -a ~/bin/bashrc-defaults.sh

echo "alias gitsu='git su'" | tee -a ~/bin/bashrc-defaults.sh
echo "alias gti='git'" | tee -a ~/bin/bashrc-defaults.sh
echo "alias server='python -m SimpleHTTPServer $1'" | tee -a ~/bin/bashrc-defaults.sh

echo "wget -O ~/.gitconfig https://raw.github.com/gdumitrescu/dotfiles/master/.gitconfig" | tee -a ~/bin/bashrc-defaults.sh
echo "wget -O ~/.gitignore https://raw.github.com/gdumitrescu/dotfiles/master/.gitignore" | tee -a ~/bin/bashrc-defaults.sh
echo "wget -O ~/.gitignore_global https://raw.github.com/gdumitrescu/dotfiles/master/.gitignore_global" | tee -a  ~/bin/bashrc-defaults.sh

cat ~/bin/bashrc-defaults.sh
source ~/bin/bashrc-defaults.sh
