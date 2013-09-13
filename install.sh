#!/usr/bin/env bash

# install default settings

cd ~
wget https://raw.github.com/gdumitrescu/dotfiles/master/.gitignore
wget https://raw.github.com/gdumitrescu/dotfiles/master/.gitignore_global
wget https://raw.github.com/gdumitrescu/dotfiles/master/.gitconfig
wget https://raw.github.com/gdumitrescu/dotfiles/master/.tmux.conf
wget https://raw.github.com/gdumitrescu/dotfiles/master/.vimrc
mkdir -p .vim/colors
cd .vim/colors
wget https://raw.github.com/scrooloose/vimfiles/master/colors/railscasts.vim
wget https://raw.github.com/akitaonrails/vimfiles/master/colors/railscasts2.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

