### Collection of my dotfiles

 - BASIC SETUP: on your local machine or your free [Nitrous.IO](http://nitrous.io) instance.
 
 ```bash
 $ https://github.com/gdumitrescu/dotfiles ~/
 ```
 or run the following commands:
 
 ```bash
 $ cd ~
 $ wget https://raw.github.com/gdumitrescu/dotfiles/master/.vimrc
 $ wget https://raw.github.com/scrooloose/vimfiles/master/colors/railscasts.vim
 $ wget https://raw.github.com/akitaonrails/vimfiles/master/colors/railscasts2.vim
 $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
 $ vim +BundleInstall +qall
 ```
 
 - TODO: use [fresh](https://github.com/freshshell/fresh) to install/manage dotfiles

### Thanks
 Github users: scrooloose and akitaonrails for vim color schemes
 Nitrous.IO: for the free box
