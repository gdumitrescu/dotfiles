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

 $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
 $ vim +BundleInstall +qall
 ```


### Thanks
 - Github user: akitaonrails for vim color schemes
