"https://github.com/VundleVim/Vundle.vim"

colo desert
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
Plugin 'lervag/vimtex'

" Correct python indentation"
Plugin 'vim-scripts/indentpython.vim'

" Auto-cmplete for Python"
" Plugin 'ycm-core/YouCompleteMe'

" Syntax Checking/Highlighting"
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

" File Browser" 
Plugin 'scrooloose/nerdtree'

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ



" Put your non-Plugin stuff after this line

let python_highlight_all=1

syntax on
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
inoremap <S-Tab> <C-d>

set clipboard=unnamed
vmap <C-c> :w !pbcopy<CR><CR>

" Set encoding"
set encoding=utf-8

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Shift between windows"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Search for word under cursor:
nnoremap gr :vimgrep <cword> */**<CR>
nnoremap Gr :vimgrep <cword> %:p:h/*<CR>
"nnoremap gR :vimgrep '\b<cword>\b' *<CR>
"nnoremap GR :vimgrep '\b<cword>\b' %:p:h/*<CR>

" Make"
nnoremap <C-M> :w\|:make!<CR>

command Pydebug :r ~/pydebug.txt

" Python PEP8 settings"
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix


au BufNewFile,BufRead Makefile
    \ set noexpandtab

" hide .pyc files in NERDtree"
let NERDTreeIgnore=['\.pyc$', '\~$']

" hide __pycache__ and venv in vimgrep
set wildignore+=__pycache__/**,*.pyc
set wildignore+=venv/**

" Flag bad whitespace "
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"YouCompleteMe settings"
