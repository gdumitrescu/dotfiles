#!/usr/bin/env bash

# install default settings

cd ~
wget https://raw.github.com/gdumitrescu/dotfiles/master/git/.gitignore
wget https://raw.github.com/gdumitrescu/dotfiles/master/git/.gitignore_global
wget https://raw.github.com/gdumitrescu/dotfiles/master/git/.gitconfig
wget https://raw.github.com/gdumitrescu/dotfiles/master/tmux/.tmux.conf
wget https://raw.github.com/gdumitrescu/dotfiles/master/vim/.vimrc
mkdir -p .vim/colors
cd .vim/colors
wget https://raw.github.com/akitaonrails/vimfiles/master/colors/ir_black.vim
wget https://raw.github.com/akitaonrails/vimfiles/master/colors/molokai.vim
wget https://raw.github.com/akitaonrails/vimfiles/master/colors/railscasts.vim
wget https://raw.github.com/akitaonrails/vimfiles/master/colors/railscasts2.vim
wget https://raw.github.com/akitaonrails/vimfiles/master/colors/zenburn.vim
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

