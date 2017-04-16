### Collection of my dotfiles

 - BASIC SETUP: on your local machine or your [Cloud9](https://c9.io) workspace.

 ```bash
 $ git clone https://github.com/gdumitrescu/dotfiles.git ~/
 ```
 and use [GNU Stow](http://www.gnu.org/software/stow/manual/stow.html) for dotfiles management

 or run `$ ./install.sh` or the following commands:

 ```bash
 $ cd ~
 $ wget https://raw.github.com/gdumitrescu/dotfiles/master/git/.gitignore
 $ wget https://raw.github.com/gdumitrescu/dotfiles/master/git/.gitignore_global
 $ wget https://raw.github.com/gdumitrescu/dotfiles/master/git/.gitconfig
 $ wget https://raw.github.com/gdumitrescu/dotfiles/master/tmux/.tmux.conf
 $ wget https://raw.github.com/gdumitrescu/dotfiles/master/vim/.vimrc
 $ mkdir -p .vim/colors
 $ cd .vim/colors
 $ wget https://raw.github.com/akitaonrails/vimfiles/master/colors/ir_black.vim
 $ wget https://raw.github.com/akitaonrails/vimfiles/master/colors/molokai.vim
 $ wget https://raw.github.com/akitaonrails/vimfiles/master/colors/railscasts.vim
 $ wget https://raw.github.com/akitaonrails/vimfiles/master/colors/railscasts2.vim
 $ wget https://raw.github.com/akitaonrails/vimfiles/master/colors/zenburn.vim
 $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
 $ vim +BundleInstall +qall
 ```


### Thanks
 - Github user: akitaonrails for vim color schemes
