" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Map <Leader> key
let mapleader=","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Bundle 'VundleVim/Vundle.vim'


" Bundles:

" UTILS
" Ctrl-P fuzzy file finder
Bundle 'kien/ctrlp.vim.git'
" Sparkup lets you write HTML code faster
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Tree explorer
Bundle 'scrooloose/nerdtree'
" Tree explorer tabs
Bundle 'jistr/vim-nerdtree-tabs'
" Syntax checking
Bundle 'scrooloose/syntastic'
" Lean & mean status/tabline for vim that's light as air
Bundle 'bling/vim-airline'


" GIT
" Git wrapper
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'

" Golang
Bundle 'fatih/vim-go'

" HASHIVIM
Bundle 'hashivim/vim-terraform'

" RUBY
" Turbo Ruby tests with tmux
Bundle 'vim-scripts/turbux.vim.git'
Bundle 'tpope/vim-rails'

" EDITOR
" Comment stuff out
Bundle 'tpope/vim-commentary'
" Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
Bundle 'vim-scripts/taglist.vim.git'
" TagBar
Bundle 'majutsushi/tagbar'
" Formatting JS
Bundle 'maksimr/vim-jsbeautify'
Bundle 'prettier/vim-prettier'
" quoting/parenthesizing made simple
Bundle 'tpope/vim-surround'
" ack - front for the Perl module
Bundle 'mileszs/ack.vim'
" ag, A.K.A. the_silver_searcher
Bundle 'rking/ag.vim'
" multiple selections
Bundle 'terryma/vim-multiple-cursors'
" Ultimate auto-completion system for Vim
Bundle 'Shougo/neocomplcache'
" TernJS for vim
Bundle 'marijnh/tern_for_vim'
" Line indentation
Bundle 'Yggdroot/indentLine'

" All of Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Appearance options
set bg=dark
set t_Co=256
colorscheme railscasts2

" be iMproved
set nocompatible

" Enable syntax highlighting
filetype off  " required !
filetype plugin on
filetype indent on
syntax on
syntax sync fromstart

" Show line numbers and length
set number " show line numbers
set ruler " show ruler
set tw=80 " width of document (used by gd)
set nowrap " don't wrap on load
set fo-=t " don't wrap text when typing

"set colorcolumn=120
highlight ColorColumn ctermbg=233
if exists('&colorcolumn')
  set colorcolumn=80
endif

" Line wrapping on by default
set wrap
set linebreak
set nomodeline " look for embedded modelines - CVE

" Use spaces instead of TABs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set smarttab
set expandtab " expand tabs
set wildchar=9 " tab as completion character

set virtualedit=block
set clipboard=unnamed  " Yanks go on clipboard instead.
set showmatch " Show matching braces.

" History and undo
set history=100 " keep track of last commands
set undolevels=100 " number od undo commands

" Search case sensitive
set hlsearch " highlight all matches
set incsearch " incremental searching on
set ignorecase
set smartcase

set cursorline
set selectmode=key
set showtabline=2 " show always for console version
set wildmenu " menu on statusbar for command autocomplete

" Status line
set ls=2 " Always show statusline
set laststatus=2
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']['.&ft.']'}%=%l,%c%v%8p

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" default to UTF-8 encoding
set encoding=utf8
set fileencoding=utf8

" Paragraph (re)formatting.
nnoremap Q gqap
vnoremap Q gq

" no beep
set noeb vb t_vb=

" Fast editing vimrc
map <Leader>s :source ~/.vimrc<CR>
map <Leader>v :e! ~/.vimrc<CR>

" Fast saving
nmap <Leader>w :w!<cr>

" tab navigation like firefox
nmap <Leader>tn :tabnext<cr>
nmap <Leader>tp :tabprevious<cr>
nmap <Leader><F4> :tabclose<cr>

nmap <Leader>n <ESC>:tabprevious<CR>
nmap <Leader>m <ESC>:tabnext<CR>

" Windows like movements for long lines with wrap enabled:
noremap j gj
noremap k gk

" Bind Ctrl+<movement> keys
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" Moving fast to front, back and 2 sides ;)
imap <m-$> <esc>$a
imap <m-0> <esc>0i
imap <D-$> <esc>$a
imap <D-0> <esc>0i

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" Indentation
set autoindent
set smartindent

" Moving code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" Configure TOhtml command
let html_number_lines = 0
let html_ignore_folding = 1
let html_use_css = 1
"let html_no_pre = 0
let use_xhtml = 1

" Enable spellchecking conditionally
map <Leader>se :setlocal spell spelllang=en_us<CR>
map <Leader>ss :setlocal spell spelllang=es_es<CR>
map <Leader>sn :setlocal nospell<CR>

" Enable omni completion.
" Set let g:neocomplcache_enable_at_startup = 1 in .vimrc
let g:neocomplcache_enable_at_startup = 1
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
highlight   Pmenu         ctermfg=0 ctermbg=2
highlight   PmenuSel      ctermfg=0 ctermbg=7
highlight   PmenuSbar     ctermfg=7 ctermbg=0
highlight   PmenuThumb    ctermfg=0 ctermbg=7

let OmniCpp_GlobalScopeSearch   = 1
let OmniCpp_DisplayMode         = 1
let OmniCpp_ShowScopeInAbbr     = 0 "do not show namespace in pop-up
let OmniCpp_ShowPrototypeInAbbr = 1 "show prototype in pop-up
let OmniCpp_ShowAccess          = 1 "show access in pop-up
let OmniCpp_SelectFirstItem     = 1 "select first item in pop-up
set completeopt=menuone,menu,longest


autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Language specific customizations
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:python_highlight_numbers = 1

" Configure syntax specific options
let python_highlight_all = 1

" Run current file in ruby
imap <Leader>rr <ESC>:!ruby %<CR>
nmap <Leader>rr :!ruby %<CR>

" Quick save command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-0>:update<CR>

"
" Configure plugins
"
" ack
let g:ackprg="ack -H --nogroup --nocolor --column"
" Ag
let g:agprg="ag --nogroup --nocolor --column"

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_powerline_fonts = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_height = 10
"let g:ctrlp_user_command = 'find %s -type f'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*/node_modules/*


" Elm
" nnoremap <leader>el :ElmEvalLine<CR>
" vnoremap <leader>es :<C-u>ElmEvalSelection<CR>
" nnoremap <leader>em :ElmMakeCurrentFile<CR>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_syntastic_show_warnings = 1
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 0
let g:elm_setup_keybindings = 1

" Gist
"let g:gist_use_password_in_gitconfig = 1
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_post_privates = 1
let g:gist_show_privates = 1

" GitGutter
let g:gitgutter_enabled = 1
highlight clear SignColumn

" vim-go
let g:go_version_warning = 0

" IndentLine
let g:indentLine_char = '┆'
let g:indentLine_color_term = 239
" for GVim
let g:indentLine_color_gui = '#A4E57E'
"for none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" HASHIVIM
let g:terraform_align=1

" js-beautify npm
"nnoremap <leader>ff :%!js-beautify -q -j -g -s 2 -f -<CR>
nnoremap <leader>ff :%!js-beautify --config /home/gabriel/.js-beautify -<CR>

"vim-jsbeautify
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
" Default highlighting (see help :highlight and help :highlight-link)
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual

"NERDTree
" load on startup
autocmd VimEnter * if !argc() | NERDTree | endif

if exists("loaded_nerd_tree")
  autocmd VimEnter * NERDTree
endif

"autocmd vimenter * NERDTree
" close when last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"NERDTreeTabs
let g:nerdtree_tabs_open_on_gui_startup=1
"map <Leader>t <plug>NERDTreeTabsToggle<CR>
map <Leader>kb :NERDTreeTabsToggle<CR>

" TagBar
nmap <F8> :TagbarToggle<CR>

" Sparkup
"Location of the sparkup executable. You shouldn't need to change this setting if you used the install option above.
let g:sparkup='sparkup' "(Default: 'sparkup') -

"Mapping used to execute sparkup.
let g:sparkupExecuteMapping = '<c-e>' "(Default: '<c-e>') -

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:syntastic_python_checkers=['pylint']
"let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
