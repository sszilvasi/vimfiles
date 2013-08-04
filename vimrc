" Author: Sandor Szilvasi
" Source: http://github.com/sszilvasi/dotfiles/vimrc

" Bundles
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'

Bundle 'taglist.vim'


" General
syntax on

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Search
set wrapscan
set ignorecase
set smartcase
set hlsearch
set incsearch

" Buffer
set hidden " Allow unsaved buffers to go in the background w/o warning

" Mouse
set mouse=a
set ttymouse=xterm2

" Edit the vimrc file
let mapleader = ","
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>sv :so $MYVIMRC<CR>

