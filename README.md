### Collection of my dotfiles [![endorse](http://api.coderwall.com/gdumitrescu/endorsecount.png)](http://coderwall.com/gdumitrescu)

 - BASIC SETUP: on your local machine or your free [Nitrous.IO](https://www.nitrous.io/join/7aNCJh74rfk) instance.
 
 ```bash
 $ https://github.com/gdumitrescu/dotfiles ~/
 ```
 or run the following commands:
 
 ```bash
 $ cd ~
 $ wget https://raw.github.com/gdumitrescu/dotfiles/master/.gitignore
 $ wget https://raw.github.com/gdumitrescu/dotfiles/master/.gitignore_global
 $ wget https://raw.github.com/gdumitrescu/dotfiles/master/.gitconfig
 $ wget https://raw.github.com/gdumitrescu/dotfiles/master/.tmux.conf
 $ wget https://raw.github.com/gdumitrescu/dotfiles/master/.vimrc
 $ mkdir -p .vim/colors
 $ cd .vim/colors
 $ wget https://raw.github.com/scrooloose/vimfiles/master/colors/railscasts.vim
 $ wget https://raw.github.com/akitaonrails/vimfiles/master/colors/railscasts2.vim
 $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
 $ vim +BundleInstall +qall
 ```
 
 - TODO: use [fresh](https://github.com/freshshell/fresh) to install/manage dotfiles

### Thanks
 - Github users: scrooloose and akitaonrails for vim color schemes
 - Nitrous.IO: for the free box
