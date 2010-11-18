set runtimepath=~/.vim,$VIMRUNTIME

"default to UTF-8 encoding
set encoding=utf8
set fileencoding=utf8

"set bg=dark
set t_Co=255
colorscheme ir_black 

set modeline
set tabstop=2 " Tabs are 2 spaces
set shiftwidth=2 " Tabs under smart indent
set autoindent
set smarttab
set expandtab
set wildchar=9

set wrap
set linebreak
set history=256
set number ruler " Ruler and numbers on
set incsearch
set hlsearch
set smartcase
set cursorline
set selectmode=key
set showtabline=2
set wildmenu
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
"set list
set laststatus=2  " Always show status line.

syntax on
syntax sync fromstart
filetype plugin indent on " Automatically detect file types.
set nocompatible " We don't want vi compatibility.

" Backups & Files
set backup                   " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go
