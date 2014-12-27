### Collection of my dotfiles [![endorse](http://api.coderwall.com/gdumitrescu/endorsecount.png)](http://coderwall.com/gdumitrescu)

 - BASIC SETUP: on your local machine or your free [Nitrous.IO](https://www.nitrous.io/join/7aNCJh74rfk) or [Koding](https://koding.com/?r=gdumitrescu) instance.

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
 $ wget https://raw.github.com/scrooloose/vimfiles/master/colors/railscasts.vim
 $ wget https://raw.github.com/akitaonrails/vimfiles/master/colors/railscasts2.vim
 $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
 $ vim +BundleInstall +qall
 ```


### Thanks
 - Github users: scrooloose and akitaonrails for vim color schemes
 - Nitrous.IO and Koding: for the VMs


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/gdumitrescu/dotfiles/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

