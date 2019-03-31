#!/usr/bin/env bash

# install default settings

cd ~
wget https://raw.github.com/gdumitrescu/dotfiles/master/git/.gitignore
wget https://raw.github.com/gdumitrescu/dotfiles/master/git/.gitignore_global
wget https://raw.github.com/gdumitrescu/dotfiles/master/git/.gitconfig
wget https://raw.github.com/gdumitrescu/dotfiles/master/tmux/.tmux.conf
wget https://raw.github.com/gdumitrescu/dotfiles/master/vim/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +BundleInstall +qall

